import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:recorder_poc/audio_player.dart';
import 'package:recorder_poc/audio_recorder.dart';
import 'package:recorder_poc/constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

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
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            RecorderConstants.appointmentsDetails,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(0, 152, 116, 1),
            ),
          ),
          centerTitle: false,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                RecorderConstants.voiceRecorder,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                RecorderConstants.voiceRecorderSubtitle,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
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
                    showPlayer
                        ? const SizedBox(
                            height: 0,
                            width: 0,
                          )
                        : AudioRecorder(
                            onStop: (path) {
                              if (kDebugMode) print('Recorded file path: $path');
                              setState(() {
                                audioPath = path;
                                showPlayer = true;
                              });
                            },
                          ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
