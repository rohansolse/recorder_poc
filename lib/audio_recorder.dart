import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:record/record.dart';
import 'package:recorder_poc/constants.dart';

class AudioRecorder extends StatefulWidget {
  final void Function(String path) onStop;

  const AudioRecorder({Key? key, required this.onStop}) : super(key: key);

  @override
  State<AudioRecorder> createState() => _AudioRecorderState();
}

class _AudioRecorderState extends State<AudioRecorder> {
  int _recordDuration = 0;
  Timer? _timer;
  final _audioRecorder = Record();
  StreamSubscription<RecordState>? _recordSub;
  RecordState _recordState = RecordState.stop;
  StreamSubscription<Amplitude>? _amplitudeSub;
  Amplitude? _amplitude;
  late bool isRecordingStarted = false;

  @override
  void initState() {
    _recordSub = _audioRecorder.onStateChanged().listen((recordState) {
      setState(() => _recordState = recordState);
    });

    _amplitudeSub = _audioRecorder.onAmplitudeChanged(const Duration(milliseconds: 300)).listen((amp) => setState(() => _amplitude = amp));

    super.initState();
  }

  Future<void> _start() async {
    try {
      if (await _audioRecorder.hasPermission()) {
        setState(() {
          isRecordingStarted = true;
        });
        // We don't do anything with this but printing
        final isSupported = await _audioRecorder.isEncoderSupported(
          AudioEncoder.aacLc,
        );
        if (kDebugMode) {
          print('${AudioEncoder.aacLc.name} supported: $isSupported');
        }

        // final devs = await _audioRecorder.listInputDevices();
        // final isRecording = await _audioRecorder.isRecording();

        await _audioRecorder.start();
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
    setState(() {
      isRecordingStarted = false;
    });
    _timer?.cancel();
    _recordDuration = 0;

    final path = await _audioRecorder.stop();

    if (path != null) {
      widget.onStop(path);
    }
  }

  Future<void> _pause() async {
    _timer?.cancel();
    await _audioRecorder.pause();
  }

  Future<void> _resume() async {
    _startTimer();
    await _audioRecorder.resume();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              _buildText(),
              const SizedBox(height: 40),
              _buildRecordStopControl(),
              const SizedBox(height: 100),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     ElevatedButton.icon(
              //       icon: Icon(
              //         Icons.delete_outline_outlined,
              //         color: isRecordingStarted ? RecorderConstants.primaryColor : RecorderConstants.scondaryColor,
              //       ),
              //       label: Text(
              //         RecorderConstants.cancelRecording,
              //         style: isRecordingStarted
              //             ? const TextStyle(color: RecorderConstants.primaryColor)
              //             : const TextStyle(color: RecorderConstants.scondaryColor),
              //       ),
              //       onPressed: isRecordingStarted ? () {} : null,
              //       style: ElevatedButton.styleFrom(
              //         backgroundColor: Colors.white,
              //         padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              //         shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(50.0),
              //           side: isRecordingStarted
              //               ? const BorderSide(color: RecorderConstants.primaryColor, width: 2)
              //               : const BorderSide(color: RecorderConstants.scondaryColor, width: 2),
              //         ),
              //       ),
              //     ),
              //     const SizedBox(width: 20),
              //     ElevatedButton.icon(
              //       icon: const Icon(Icons.my_library_books_rounded),
              //       label: const Text(RecorderConstants.submitRecoring),
              //       onPressed: isRecordingStarted
              //           ? () {
              //               showDialog(
              //                 context: context,
              //                 builder: (context) {
              //                   return Dialog(
              //                     shape: RoundedRectangleBorder(
              //                       borderRadius: BorderRadius.circular(20),
              //                     ),
              //                     child: Padding(
              //                       padding: const EdgeInsets.all(8.0),
              //                       child: ListView(
              //                         shrinkWrap: true,
              //                         children: [
              //                           const SizedBox(height: 30),
              //                           const Icon(Icons.mic, size: 60),
              //                           const SizedBox(height: 30),
              //                           const Center(
              //                             child: Text(
              //                               RecorderConstants.submitRecordingWithQuestion,
              //                               style: TextStyle(
              //                                 fontSize: 20,
              //                                 fontWeight: FontWeight.w700,
              //                                 fontFamily: RecorderConstants.fontFamilyArchivo,
              //                               ),
              //                             ),
              //                           ),
              //                           const SizedBox(height: 30),
              //                           const Center(
              //                             child: Text(
              //                               RecorderConstants.areYouDone,
              //                               style: TextStyle(
              //                                 fontFamily: RecorderConstants.fontFamilyRoboto,
              //                               ),
              //                             ),
              //                           ),
              //                           const SizedBox(height: 10),
              //                           Center(
              //                             child: RichText(
              //                               text: TextSpan(
              //                                 text: RecorderConstants.thisWillGenerate,
              //                                 style: DefaultTextStyle.of(context).style,
              //                                 children: const <TextSpan>[
              //                                   TextSpan(
              //                                     text: RecorderConstants.visitSummaryDocument,
              //                                     style: TextStyle(
              //                                       fontWeight: FontWeight.w700,
              //                                       fontFamily: RecorderConstants.fontFamilyRoboto,
              //                                     ),
              //                                   ),
              //                                 ],
              //                               ),
              //                             ),
              //                           ),
              //                           const SizedBox(height: 30),
              //                           Column(
              //                             children: [
              //                               SizedBox(
              //                                 width: 200,
              //                                 child: ElevatedButton(
              //                                   onPressed: () {},
              //                                   style: ElevatedButton.styleFrom(
              //                                     backgroundColor: RecorderConstants.primaryColor,
              //                                     padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              //                                     shape: RoundedRectangleBorder(
              //                                       borderRadius: BorderRadius.circular(50.0),
              //                                       side: const BorderSide(color: RecorderConstants.primaryColor, width: 2),
              //                                     ),
              //                                   ),
              //                                   child: const Text(
              //                                     RecorderConstants.submitRecoring,
              //                                     style: TextStyle(
              //                                       fontSize: 16,
              //                                       fontWeight: FontWeight.w700,
              //                                       fontFamily: RecorderConstants.fontFamilyRoboto,
              //                                     ),
              //                                   ),
              //                                 ),
              //                               ),
              //                               const SizedBox(height: 5),
              //                               SizedBox(
              //                                 width: 200,
              //                                 child: ElevatedButton(
              //                                   onPressed: () {},
              //                                   style: ElevatedButton.styleFrom(
              //                                     backgroundColor: Colors.white,
              //                                     padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              //                                     shape: RoundedRectangleBorder(
              //                                       borderRadius: BorderRadius.circular(50.0),
              //                                       side: const BorderSide(color: RecorderConstants.primaryColor, width: 2),
              //                                     ),
              //                                   ),
              //                                   child: const Text(
              //                                     RecorderConstants.cancel,
              //                                     style: TextStyle(
              //                                       fontSize: 16,
              //                                       color: RecorderConstants.primaryColor,
              //                                       fontWeight: FontWeight.w700,
              //                                       fontFamily: RecorderConstants.fontFamilyRoboto,
              //                                     ),
              //                                   ),
              //                                 ),
              //                               ),
              //                             ],
              //                           ),
              //                           const SizedBox(height: 20),
              //                         ],
              //                       ),
              //                     ),
              //                   );
              //                 },
              //               );
              //             }
              //           : null,
              //       style: ElevatedButton.styleFrom(
              //         backgroundColor: RecorderConstants.primaryColor,
              //         padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              //         shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(50.0),
              //           side: isRecordingStarted
              //               ? const BorderSide(color: RecorderConstants.primaryColor, width: 2)
              //               : const BorderSide(color: RecorderConstants.scondaryColor, width: 2),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // if (_amplitude != null) ...[
              //   const SizedBox(height: 40),
              //   Text('Current: ${_amplitude?.current ?? 0.0}'),
              //   Text('Max: ${_amplitude?.max ?? 0.0}'),
              // ],
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _recordSub?.cancel();
    _amplitudeSub?.cancel();
    _audioRecorder.dispose();
    super.dispose();
  }

  Widget _buildRecordStopControl() {
    late Widget icon;
    late Color color = const Color.fromRGBO(205, 60, 50, 1);

    if (_recordState != RecordState.stop) {
      icon = Image.asset(
        "assets/vector.png",
        height: 24,
        width: 24,
      );
    } else {
      icon = Image.asset(
        "assets/mic_icon.png",
        height: 24,
        width: 24,
      );
    }

    return ClipOval(
      child: Material(
        color: color,
        child: InkWell(
          child: SizedBox(width: 57.7, height: 57.7, child: icon),
          onTap: () {
            (_recordState != RecordState.stop) ? _stop() : _start();
          },
        ),
      ),
    );
  }

  Widget _buildPauseResumeControl() {
    if (_recordState == RecordState.stop) {
      return const SizedBox.shrink();
    }

    late Icon icon;
    late Color color;

    if (_recordState == RecordState.record) {
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
            (_recordState == RecordState.pause) ? _resume() : _pause();
          },
        ),
      ),
    );
  }

  Widget _buildText() {
    if (_recordState != RecordState.stop) {
      return _buildTimer();
    }

    // return const Text("Waiting to record");
    return Text(
      RecorderConstants.startRecording,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _buildTimer() {
    final String hours = _formatNumber(_recordDuration ~/ 60);
    final String minutes = _formatNumber(_recordDuration ~/ 60);
    final String seconds = _formatNumber(_recordDuration % 60);

    return Text(
      '$hours:$minutes:$seconds',
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
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
}
