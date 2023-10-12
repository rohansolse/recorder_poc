import 'dart:async';

import 'package:audioplayers/audioplayers.dart' as ap;
import 'package:audioplayers/audioplayers.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:recorder_poc/sound_waveform.dart';

class AudioPlayer extends StatefulWidget {
  /// Path from where to play recorded audio
  final String source;

  /// Callback when audio file should be removed
  /// Setting this to null hides the delete button
  final VoidCallback onDelete;

  const AudioPlayer({
    Key? key,
    required this.source,
    required this.onDelete,
  }) : super(key: key);

  @override
  AudioPlayerState createState() => AudioPlayerState();
}

class AudioPlayerState extends State<AudioPlayer> {
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
    _playerStateChangedSubscription =
        _audioPlayer.onPlayerComplete.listen((state) async {
      await stop();
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

    super.initState();
  }

  @override
  void dispose() {
    _playerStateChangedSubscription.cancel();
    _positionChangedSubscription.cancel();
    _durationChangedSubscription.cancel();
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _audioPlayer.state == ap.PlayerState.playing
                  ? Container(
                      height: 100,
                      child: const SoundWaveformWidget(),
                    )
                  : const SizedBox(
                      height: 100,
                    ),
              _duration != null
                  ? Text(
                      _duration.toString().substring(0, 7),
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w700),
                    )
                  : const SizedBox(height: 0, width: 0),
              _buildSlider(constraints.maxWidth),
              const SizedBox(height: 10),
              _buildControl(),
              // Row(
              //   mainAxisSize: MainAxisSize.max,
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: <Widget>[
              //     _buildControl(),
              //     _buildSlider(constraints.maxWidth),
              //     IconButton(
              //       icon: const Icon(Icons.delete, color: Color(0xFF73748D), size: _deleteBtnSize),
              //       onPressed: () {
              //         if (_audioPlayer.state == ap.PlayerState.playing) {
              //           stop().then((value) => widget.onDelete());
              //         } else {
              //           widget.onDelete();
              //         }
              //       },
              //     ),
              //   ],
              // ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildControl() {
    late Color color = const Color.fromRGBO(205, 60, 50, 1);

    return AvatarGlow(
        endRadius: 80,
        glowColor: color,
        animate: _audioPlayer.state == ap.PlayerState.playing,
        duration: const Duration(milliseconds: 1000),
        repeatPauseDuration: const Duration(milliseconds: 200),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(16),
              backgroundColor: color),
          child: _audioPlayer.state == ap.PlayerState.playing
              ? Image.asset(
                  "assets/vector.png",
                  height: 24,
                  width: 24,
                )
              : const Icon(Icons.play_arrow, color: Colors.white, size: 24),
          onPressed: () {
            (_audioPlayer.state == ap.PlayerState.playing) ? pause() : play();
            setState(() {});
          },
        ));
  }

  Widget _buildSlider(double widgetWidth) {
    bool canSetValue = false;
    final duration = _duration;
    final position = _position;

    if (duration != null && position != null) {
      canSetValue = position.inMilliseconds > 0;
      canSetValue &= position.inMilliseconds < duration.inMilliseconds;
    }

    // double width = widgetWidth - _controlSize - _deleteBtnSize;
    double width = widgetWidth;
    width -= _deleteBtnSize;

    return SizedBox(
      width: width,
      child: Slider(
        activeColor: const Color.fromRGBO(0, 102, 78, 1),
        inactiveColor: const Color.fromRGBO(201, 201, 201, 1),
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

  Future<void> play() {
    return _audioPlayer.play(
      kIsWeb ? ap.UrlSource(widget.source) : ap.DeviceFileSource(widget.source),
    );
  }

  Future<void> pause() => _audioPlayer.pause();

  Future<void> stop() => _audioPlayer.stop();
}
