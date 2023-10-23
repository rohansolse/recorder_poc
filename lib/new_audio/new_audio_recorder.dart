import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:record/record.dart';
import 'package:recorder_poc/new_audio/new_audio_player.dart';
import 'package:recorder_poc/new_audio/recorder_audio_append.dart';
import 'package:audioplayers/audioplayers.dart' as ap;
import 'package:audioplayers/audioplayers.dart';

import 'platform/audio_recorder_platform.dart';

class Recorder extends StatefulWidget {
  // final void Function(String path, int duration) onStop;
  // final bool continueRecording;
  // final int voiceDuration;

  const Recorder({
    Key? key,
    // required this.onStop,
    // required this.continueRecording,
    // required this.voiceDuration
  }) : super(key: key);

  @override
  State<Recorder> createState() => _RecorderState();
}

class _RecorderState extends State<Recorder> with AudioRecorderMixin {
  int _recordDuration = 0;
  Timer? _timer;
  StreamSubscription<RecordState>? _recordSub;
  String voicePath = '';
  bool isResume = false;
  bool showPlayer = false;
  bool isEditing = false;
  bool continueRecording = false;

  static const double _controlSize = 56;
  static const double _deleteBtnSize = 24;
  final _audioPlayer = ap.AudioPlayer()..setReleaseMode(ReleaseMode.stop);
  late StreamSubscription<void> _playerStateChangedSubscription;
  late StreamSubscription<Duration?> _durationChangedSubscription;
  late StreamSubscription<Duration> _positionChangedSubscription;
  Duration? _position;
  Duration? _duration;

  @override
  void initState() {
    _recordSub = AudioRecorderAppend.audioRecorder
        .onStateChanged()
        .listen((recordState) {
      setState(() => AudioRecorderAppend.updateRecordState(recordState));
      _updateRecordState(recordState);
    });

    super.initState();
  }

  void initalizePlayer() {
    if (showPlayer) {
      _playerStateChangedSubscription =
          _audioPlayer.onPlayerComplete.listen((state) async {
        await stopPlayer();
        setState(() {});
      });
      _positionChangedSubscription = _audioPlayer.onPositionChanged.listen(
        (position) => setState(() {
          _position = position;
        }),
      );
      _durationChangedSubscription = _audioPlayer.onDurationChanged.listen(
        (duration) => setState(() {
          _duration = duration;
        }),
      );
    }
    setState(() {});
  }

  Future<void> _start() async {
    try {
      if (await AudioRecorderAppend.audioRecorder.hasPermission()) {
        const encoder = AudioEncoder.wav;

        // We don't do anything with this but printing
        final isSupported =
            await AudioRecorderAppend.audioRecorder.isEncoderSupported(
          encoder,
        );

        debugPrint('${encoder.name} supported: $isSupported');

        final devs = await AudioRecorderAppend.audioRecorder.listInputDevices();
        debugPrint(devs.toString());

        const config = RecordConfig(encoder: encoder);

        // Record to file
        await recordFile(AudioRecorderAppend.audioRecorder, config, isEditing, voicePath);
        print("audio recording page, getting audio path: $voicePath");

        // Record to stream
        // await recordStream(_audioRecorder, config);

        _recordDuration = 0;

        _startTimer();
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<void> _stop() async {
    String? path = await AudioRecorderAppend.audioRecorder.stop();

    if(path != null) {
      setState(() {
        voicePath = path;
      });
    }

    print("stop is called");

    if (voicePath != null) {
      // widget.onStop(voicePath!, _recordDuration);

      setState(() {
        showPlayer = true;
      });

      downloadWebData(voicePath!);
    }
  }

  Future<void> _pause() async {
    await AudioRecorderAppend.audioRecorder.pause();

    if (voicePath != null) {
      // widget.onStop(voicePath!, _recordDuration);
      setState(() {
        showPlayer = true;
        initalizePlayer();
      });
    }
  }

  Future<void> _resume() async {
    print("resume is being called");
    _startTimer();
    setState(() {
      isResume = true;
    });
    print("isResume is $isResume");
    await AudioRecorderAppend.audioRecorder.resume();
  }

  void _updateRecordState(RecordState recordState) {
    switch (recordState) {
      case RecordState.pause:
        _timer?.cancel();
        break;
      case RecordState.record:
        _startTimer();
        break;
      case RecordState.stop:
        _timer?.cancel();
        _recordDuration = 0;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    print(
        "recording state is pause is true ? ${AudioRecorderAppend.recordState == RecordState.pause}");
    return LayoutBuilder(builder: (context, constraints) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            isEditing
                ? Text("Please continue the recording")
                : SizedBox(height: 0),
            SizedBox(height: 40),
            Center(
              child: showPlayer
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          _buildPlayerControl(),
                          _buildPlayerSlider(
                              MediaQuery.of(context).size.width * 0.8),
                          IconButton(
                            icon: const Icon(Icons.delete,
                                color: Color(0xFF73748D), size: _deleteBtnSize),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _buildRecordStopControl(),
                        const SizedBox(width: 20),
                        _buildText(),
                      ],
                    ),
            ),
            showPlayer
                ? Text('${_duration ?? 0.0}')
                : SizedBox(
                    height: 0,
                    width: 0,
                  ),
            SizedBox(height: 40),
            ElevatedButton(
              child: const Text(
                'Submit',
                style: TextStyle(fontSize: 24.0),
              ),
              onPressed: () async {
                // isEditing = await Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => VisitSummary(source: audioPath!)));
                setState(() {
                  isEditing = true;
                  showPlayer = false;
                  continueRecording = true;
                });
                print("isEditing after pop is $isEditing");
                print("continueRecording after pop is $continueRecording");
              },
            ),
          ],
        ),
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _recordSub?.cancel();
    AudioRecorderAppend.audioRecorder.dispose();
    super.dispose();
  }

  Widget _buildRecordStopControl() {
    late Icon icon;
    late Color color;

    if ((AudioRecorderAppend.recordState != RecordState.stop) &&
        (AudioRecorderAppend.recordState != RecordState.pause)) {
      icon = const Icon(Icons.stop, color: Colors.red, size: 30);
      color = Colors.red.withOpacity(0.1);
    } else {
      final theme = Theme.of(context);
      icon = Icon(Icons.mic, color: theme.primaryColor, size: 30);
      color = theme.primaryColor.withOpacity(0.1);
    }

    return ClipOval(
      child: Material(
        color: color,
        child: InkWell(
          child: SizedBox(width: 56, height: 56, child: icon),
          onTap: () {
            // isResume
            //     ? (_stop())
            //     : (continueRecording
            //         ? (_resume())
            //         : ((AudioRecorderAppend.recordState != RecordState.stop)
            //             ? _pause()
            //             : _start()));
            (AudioRecorderAppend.recordState != RecordState.stop)
                ? _stop()
                : _start();
          },
        ),
      ),
    );
  }

  Widget _buildPauseResumeControl() {
    if (AudioRecorderAppend.recordState == RecordState.stop) {
      return const SizedBox.shrink();
    }

    late Icon icon;
    late Color color;

    if (AudioRecorderAppend.recordState == RecordState.record) {
      icon = const Icon(Icons.pause, color: Colors.red, size: 30);
      color = Colors.red.withOpacity(0.1);
    } else {
      final theme = Theme.of(context);
      icon = const Icon(Icons.play_arrow, color: Colors.red, size: 30);
      color = theme.primaryColor.withOpacity(0.1);
    }

    return ClipOval(
      child: Material(
        color: color,
        child: InkWell(
          child: SizedBox(width: 56, height: 56, child: icon),
          onTap: () {
            (AudioRecorderAppend.recordState == RecordState.pause)
                ? _resume()
                : _pause();
          },
        ),
      ),
    );
  }

  Widget _buildText() {
    if (AudioRecorderAppend.recordState != RecordState.stop) {
      return _buildTimer();
    }

    return const Text("Waiting to record");
  }

  Widget _buildTimer() {
    final String minutes = _formatNumber(_recordDuration ~/ 60);
    final String seconds = _formatNumber(_recordDuration % 60);

    return Text(
      '$minutes : $seconds',
      style: const TextStyle(color: Colors.red),
    );
  }

  String _formatNumber(int number) {
    String numberStr = number.toString();
    if (number < 10) {
      numberStr = '0$numberStr';
    }

    return numberStr;
  }

  void _startTimer() {
    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      setState(() => _recordDuration++);
    });
  }

  Widget _buildPlayerControl() {
    Icon icon;
    Color color;

    if (_audioPlayer.state == ap.PlayerState.playing) {
      icon = const Icon(Icons.pause, color: Colors.red, size: 30);
      color = Colors.red.withOpacity(0.1);
    } else {
      final theme = Theme.of(context);
      icon = Icon(Icons.play_arrow, color: theme.primaryColor, size: 30);
      color = theme.primaryColor.withOpacity(0.1);
    }

    return ClipOval(
      child: Material(
        color: color,
        child: InkWell(
          child:
              SizedBox(width: _controlSize, height: _controlSize, child: icon),
          onTap: () {
            if (_audioPlayer.state == ap.PlayerState.playing) {
              pausePlayer();
            } else {
              playPlayer();
            }
          },
        ),
      ),
    );
  }

  Widget _buildPlayerSlider(double widgetWidth) {
    bool canSetValue = false;
    final duration = _duration;
    final position = _position;

    if (duration != null && position != null) {
      canSetValue = position.inMilliseconds > 0;
      canSetValue &= position.inMilliseconds < duration.inMilliseconds;
    }

    double width = widgetWidth - _controlSize - _deleteBtnSize;
    width -= _deleteBtnSize;

    return SizedBox(
      width: width,
      child: Slider(
        activeColor: Theme.of(context).primaryColor,
        inactiveColor: Theme.of(context).colorScheme.secondary,
        onChanged: (v) {
          if (duration != null) {
            final position = v * duration.inMilliseconds;
            _audioPlayer.seek(Duration(milliseconds: position.round()));
          }
        },
        value: canSetValue && duration != null && position != null
            ? position.inMilliseconds / duration.inMilliseconds
            : 0.0,
      ),
    );
  }

  Future<void> playPlayer() {
    return _audioPlayer.play(
      kIsWeb ? ap.UrlSource(voicePath!) : ap.DeviceFileSource(voicePath!),
    );
  }

  Future<void> pausePlayer() => _audioPlayer.pause();

  Future<void> stopPlayer() => _audioPlayer.stop();
}

// class Recorder extends StatefulWidget {
//   final void Function(String path, int duration) onStop;
//   final bool continueRecording;
//   final int voiceDuration;
//
//   const Recorder(
//       {Key? key,
//       required this.onStop,
//       required this.continueRecording,
//       required this.voiceDuration})
//       : super(key: key);
//
//   @override
//   State<Recorder> createState() => _RecorderState();
// }
//
// class _RecorderState extends State<Recorder> with AudioRecorderMixin {
//   int _recordDuration = 0;
//   Timer? _timer;
//   // late final AudioRecorder _audioRecorder;
//   StreamSubscription<RecordState>? _recordSub;
//   // RecordState _recordState = RecordState.stop;
//   String? voicePath;
//   bool isResume = false;
//
//   @override
//   void initState() {
//     // _audioRecorder = AudioRecorder();
//
//     _recordSub = AudioRecorderAppend.audioRecorder
//         .onStateChanged()
//         .listen((recordState) {
//       setState(() => AudioRecorderAppend.updateRecordState(recordState));
//       _updateRecordState(recordState);
//     });
//
//     super.initState();
//   }
//
//   Future<void> _start() async {
//     try {
//       if (await AudioRecorderAppend.audioRecorder.hasPermission()) {
//         const encoder = AudioEncoder.wav;
//
//         // We don't do anything with this but printing
//         final isSupported =
//             await AudioRecorderAppend.audioRecorder.isEncoderSupported(
//           encoder,
//         );
//
//         debugPrint('${encoder.name} supported: $isSupported');
//
//         final devs = await AudioRecorderAppend.audioRecorder.listInputDevices();
//         debugPrint(devs.toString());
//
//         const config = RecordConfig(encoder: encoder);
//
//         // Record to file
//         voicePath = await recordFile(AudioRecorderAppend.audioRecorder, config);
//         print("audio recording page, getting audio path: $voicePath");
//
//         // Record to stream
//         // await recordStream(_audioRecorder, config);
//
//         _recordDuration = 0;
//
//         _startTimer();
//       }
//     } catch (e) {
//       if (kDebugMode) {
//         print(e);
//       }
//     }
//   }
//
//   Future<void> _stop() async {
//     await AudioRecorderAppend.audioRecorder.stop();
//
//     print("stop is called");
//
//     if (voicePath != null) {
//       widget.onStop(voicePath!, _recordDuration);
//
//       downloadWebData(voicePath!);
//     }
//   }
//
//   Future<void> _pause() async {
//     await AudioRecorderAppend.audioRecorder.pause();
//
//     if (voicePath != null) {
//       widget.onStop(voicePath!, _recordDuration);
//     }
//   }
//
//   Future<void> _resume() async {
//     print("resume is being called");
//     _startTimer();
//     setState(() {
//       isResume = true;
//     });
//     print("isResume is $isResume");
//     await AudioRecorderAppend.audioRecorder.resume();
//   }
//
//   void _updateRecordState(RecordState recordState) {
//     // setState(() => _recordState = recordState);
//
//     switch (recordState) {
//       case RecordState.pause:
//         _timer?.cancel();
//         break;
//       case RecordState.record:
//         _startTimer();
//         break;
//       case RecordState.stop:
//         _timer?.cancel();
//         _recordDuration = 0;
//         break;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     print("continueRecording in audio_recorder is ${widget.continueRecording}");
//     print(
//         "recording state is pause is true ? ${AudioRecorderAppend.recordState == RecordState.pause}");
//     return LayoutBuilder(builder: (context, constraints) {
//       return Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               _buildRecordStopControl(),
//               const SizedBox(width: 20),
//               // _buildPauseResumeControl(),
//               // const SizedBox(width: 20),
//               _buildText(),
//             ],
//           ),
//         ],
//       );
//     });
//   }
//
//   @override
//   void dispose() {
//     _timer?.cancel();
//     _recordSub?.cancel();
//     AudioRecorderAppend.audioRecorder.dispose();
//     super.dispose();
//   }
//
//   Widget _buildRecordStopControl() {
//     late Icon icon;
//     late Color color;
//
//     if ((AudioRecorderAppend.recordState != RecordState.stop) &&
//         (AudioRecorderAppend.recordState != RecordState.pause)) {
//       icon = const Icon(Icons.stop, color: Colors.red, size: 30);
//       color = Colors.red.withOpacity(0.1);
//     } else {
//       final theme = Theme.of(context);
//       icon = Icon(Icons.mic, color: theme.primaryColor, size: 30);
//       color = theme.primaryColor.withOpacity(0.1);
//     }
//
//     return ClipOval(
//       child: Material(
//         color: color,
//         child: InkWell(
//           child: SizedBox(width: 56, height: 56, child: icon),
//           onTap: () {
//             isResume
//                 ? (_stop())
//                 : (widget.continueRecording
//                     ? (_resume())
//                     : ((AudioRecorderAppend.recordState != RecordState.stop)
//                         ? _pause()
//                         : _start()));
//           },
//         ),
//       ),
//     );
//   }
//
//   Widget _buildPauseResumeControl() {
//     if (AudioRecorderAppend.recordState == RecordState.stop) {
//       return const SizedBox.shrink();
//     }
//
//     late Icon icon;
//     late Color color;
//
//     if (AudioRecorderAppend.recordState == RecordState.record) {
//       icon = const Icon(Icons.pause, color: Colors.red, size: 30);
//       color = Colors.red.withOpacity(0.1);
//     } else {
//       final theme = Theme.of(context);
//       icon = const Icon(Icons.play_arrow, color: Colors.red, size: 30);
//       color = theme.primaryColor.withOpacity(0.1);
//     }
//
//     return ClipOval(
//       child: Material(
//         color: color,
//         child: InkWell(
//           child: SizedBox(width: 56, height: 56, child: icon),
//           onTap: () {
//             (AudioRecorderAppend.recordState == RecordState.pause)
//                 ? _resume()
//                 : _pause();
//           },
//         ),
//       ),
//     );
//   }
//
//   Widget _buildText() {
//     if (AudioRecorderAppend.recordState != RecordState.stop) {
//       return _buildTimer();
//     }
//
//     return const Text("Waiting to record");
//   }
//
//   Widget _buildTimer() {
//     final String minutes = _formatNumber(_recordDuration ~/ 60);
//     final String seconds = _formatNumber(_recordDuration % 60);
//
//     return Text(
//       '$minutes : $seconds',
//       style: const TextStyle(color: Colors.red),
//     );
//   }
//
//   String _formatNumber(int number) {
//     String numberStr = number.toString();
//     if (number < 10) {
//       numberStr = '0$numberStr';
//     }
//
//     return numberStr;
//   }
//
//   void _startTimer() {
//     _timer?.cancel();
//
//     if (widget.continueRecording) {
//       _recordDuration = _recordDuration + widget.voiceDuration;
//     }
//
//     _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
//       setState(() => _recordDuration++);
//     });
//   }
// }

// class Recorder extends StatefulWidget {
//   final void Function(String path, int duration) onStop;
//   final bool continueRecording;
//   final int voiceDuration;
//
//   const Recorder(
//       {Key? key,
//         required this.onStop,
//         required this.continueRecording,
//         required this.voiceDuration})
//       : super(key: key);
//
//   @override
//   State<Recorder> createState() => _RecorderState();
// }
//
// class _RecorderState extends State<Recorder> with AudioRecorderMixin {
//   int _recordDuration = 0;
//   Timer? _timer;
//   late final AudioRecorder _audioRecorder;
//   StreamSubscription<RecordState>? _recordSub;
//   RecordState _recordState = RecordState.stop;
//   StreamSubscription<Amplitude>? _amplitudeSub;
//   Amplitude? _amplitude;
//   String? voicePath;
//   bool isResume = false;
//
//   @override
//   void initState() {
//     _audioRecorder = AudioRecorder();
//
//     _recordSub = _audioRecorder.onStateChanged().listen((recordState) {
//       _updateRecordState(recordState);
//     });
//
//     _amplitudeSub = _audioRecorder
//         .onAmplitudeChanged(const Duration(milliseconds: 300))
//         .listen((amp) {
//       setState(() => _amplitude = amp);
//     });
//
//     super.initState();
//   }
//
//   Future<void> _start() async {
//     try {
//       if (await _audioRecorder.hasPermission()) {
//         const encoder = AudioEncoder.wav;
//
//         // We don't do anything with this but printing
//         final isSupported = await _audioRecorder.isEncoderSupported(
//           encoder,
//         );
//
//         debugPrint('${encoder.name} supported: $isSupported');
//
//         final devs = await _audioRecorder.listInputDevices();
//         debugPrint(devs.toString());
//
//         const config = RecordConfig(encoder: encoder);
//
//         // Record to file
//         voicePath = await recordFile(_audioRecorder, config);
//         print("audio recording page, getting audio path: $voicePath");
//
//         // Record to stream
//         // await recordStream(_audioRecorder, config);
//
//         _recordDuration = 0;
//
//         _startTimer();
//       }
//     } catch (e) {
//       if (kDebugMode) {
//         print(e);
//       }
//     }
//   }
//
//   Future<void> _stop() async {
//     await _audioRecorder.stop();
//
//     print("stop is called");
//
//     if (voicePath != null) {
//       widget.onStop(voicePath!, _recordDuration);
//
//       downloadWebData(voicePath!);
//     }
//   }
//
//   Future<void> _pause() async {
//     await _audioRecorder.pause();
//
//     if (voicePath != null) {
//       widget.onStop(voicePath!, _recordDuration);
//     }
//   }
//
//   Future<void> _resume() async {
//     print("resume is being called");
//     _startTimer();
//     setState(() {
//       isResume = true;
//     });
//     print("isResume is $isResume");
//     await _audioRecorder.resume();
//   }
//
//   void _updateRecordState(RecordState recordState) {
//     setState(() => _recordState = recordState);
//
//     switch (recordState) {
//       case RecordState.pause:
//         _timer?.cancel();
//         break;
//       case RecordState.record:
//         _startTimer();
//         break;
//       case RecordState.stop:
//         _timer?.cancel();
//         _recordDuration = 0;
//         break;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     print("continueRecording in audio_recorder is ${widget.continueRecording}");
//     print(
//         "recording state is pause is true ? ${_recordState == RecordState.pause}");
//     return LayoutBuilder(builder: (context, constraints) {
//       return Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               _buildRecordStopControl(),
//               const SizedBox(width: 20),
//               _buildPauseResumeControl(),
//               const SizedBox(width: 20),
//               _buildText(),
//             ],
//           ),
//           if (_amplitude != null) ...[
//             const SizedBox(height: 40),
//             Text('Current: ${_amplitude?.current ?? 0.0}'),
//             Text('Max: ${_amplitude?.max ?? 0.0}'),
//           ],
//         ],
//       );
//     });
//   }
//
//   @override
//   void dispose() {
//     _timer?.cancel();
//     _recordSub?.cancel();
//     _amplitudeSub?.cancel();
//     _audioRecorder.dispose();
//     super.dispose();
//   }
//
//   Widget _buildRecordStopControl() {
//     late Icon icon;
//     late Color color;
//
//     if (_recordState != RecordState.stop) {
//       icon = const Icon(Icons.stop, color: Colors.red, size: 30);
//       color = Colors.red.withOpacity(0.1);
//     } else {
//       final theme = Theme.of(context);
//       icon = Icon(Icons.mic, color: theme.primaryColor, size: 30);
//       color = theme.primaryColor.withOpacity(0.1);
//     }
//
//     return ClipOval(
//       child: Material(
//         color: color,
//         child: InkWell(
//           child: SizedBox(width: 56, height: 56, child: icon),
//           onTap: () {
//             isResume
//                 ? (_stop())
//                 : (widget.continueRecording
//                 ? (_resume())
//                 : ((_recordState != RecordState.stop)
//                 ? _pause()
//                 : _start()));
//           },
//         ),
//       ),
//     );
//   }
//
//   Widget _buildPauseResumeControl() {
//     if (_recordState == RecordState.stop) {
//       return const SizedBox.shrink();
//     }
//
//     late Icon icon;
//     late Color color;
//
//     if (_recordState == RecordState.record) {
//       icon = const Icon(Icons.pause, color: Colors.red, size: 30);
//       color = Colors.red.withOpacity(0.1);
//     } else {
//       final theme = Theme.of(context);
//       icon = const Icon(Icons.play_arrow, color: Colors.red, size: 30);
//       color = theme.primaryColor.withOpacity(0.1);
//     }
//
//     return ClipOval(
//       child: Material(
//         color: color,
//         child: InkWell(
//           child: SizedBox(width: 56, height: 56, child: icon),
//           onTap: () {
//             (_recordState == RecordState.pause) ? _resume() : _pause();
//           },
//         ),
//       ),
//     );
//   }
//
//   Widget _buildText() {
//     if (_recordState != RecordState.stop) {
//       return _buildTimer();
//     }
//
//     return const Text("Waiting to record");
//   }
//
//   Widget _buildTimer() {
//     final String minutes = _formatNumber(_recordDuration ~/ 60);
//     final String seconds = _formatNumber(_recordDuration % 60);
//
//     return Text(
//       '$minutes : $seconds',
//       style: const TextStyle(color: Colors.red),
//     );
//   }
//
//   String _formatNumber(int number) {
//     String numberStr = number.toString();
//     if (number < 10) {
//       numberStr = '0$numberStr';
//     }
//
//     return numberStr;
//   }
//
//   void _startTimer() {
//     _timer?.cancel();
//
//     if (widget.continueRecording) {
//       _recordDuration = _recordDuration + widget.voiceDuration;
//     }
//
//     _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
//       setState(() => _recordDuration++);
//     });
//   }
// }
