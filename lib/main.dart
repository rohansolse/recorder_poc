import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:recorder_poc/audio_player.dart';
import 'package:recorder_poc/audio_recorder.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showPlayer = false;
  String? audioPath;

  @override
  void initState() {
    showPlayer = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            showPlayer
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: AudioPlayer(
                      source: audioPath!,
                      onDelete: () {
                        setState(() => showPlayer = false);
                      },
                    ),
                  )
                : const SizedBox(
                    height: 0,
                    width: 0,
                  ),
            SizedBox(
              height: 200,
              child: AudioRecorder(
                onStop: (path) {
                  if (kDebugMode) print('Recorded file path: $path');
                  setState(() {
                    audioPath = path;
                    showPlayer = true;
                  });
                },
              ),
            )
          ],
        )),
      ),
    );
  }
}
