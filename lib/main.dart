import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:recorder_poc/audio/audio_player.dart';
import 'package:recorder_poc/audio/audio_recorder.dart';
import 'package:recorder_poc/audio/widgets/elevated_button_with_icon.dart';
import 'package:recorder_poc/audio/widgets/show_dialog_box.dart';
import 'package:recorder_poc/constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Recorder(),
    );
  }
}

class Recorder extends StatefulWidget {
  const Recorder({super.key});

  @override
  State<Recorder> createState() => _RecorderState();
}

class _RecorderState extends State<Recorder> {
  bool showPlayer = false;
  String? audioPath;

  @override
  void initState() {
    showPlayer = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: RecorderConstants.whiteColor,
        title: const Text(
          RecorderConstants.appointmentsDetails,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: RecorderConstants.primaryColor,
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
            const Text(
              RecorderConstants.voiceRecorder,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              RecorderConstants.voiceRecorderSubtitle,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.64,
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButtonWithIcon(
                  backgroundColor: RecorderConstants.whiteColor,
                  borderColor: showPlayer ? RecorderConstants.primaryColor : RecorderConstants.scondaryColor,
                  buttonText: RecorderConstants.cancelRecording,
                  buttonColor: showPlayer ? RecorderConstants.primaryColor : RecorderConstants.scondaryColor,
                  iconLink: showPlayer ? 'assets/cancelActive.png' : 'assets/cancelInactive.png',
                  onPressed: showPlayer
                      ? () {
                          setState(() {
                            showPlayer = false;
                          });
                        }
                      : () {},
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: RecorderConstants.fontFamilyRoboto,
                ),
                const SizedBox(width: 20),
                ElevatedButtonWithIcon(
                  backgroundColor: showPlayer ? RecorderConstants.primaryColor : RecorderConstants.scondaryColor,
                  borderColor: showPlayer ? RecorderConstants.primaryColor : RecorderConstants.scondaryColor,
                  buttonText: RecorderConstants.submitRecoring,
                  buttonColor: RecorderConstants.whiteColor,
                  iconLink: 'assets/submit.png',
                  onPressed: showPlayer
                      ? () {
                          showDialog(
                            context: context,
                            builder: (context) => const ShowDialogWidget(),
                          );
                        }
                      : () {},
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: RecorderConstants.fontFamilyRoboto,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
