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
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecorderT(),
    );
  }
}

class RecorderT extends StatefulWidget {
  const RecorderT({super.key});

  @override
  State<RecorderT> createState() => _RecorderTState();
}

class _RecorderTState extends State<RecorderT> {
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  icon: Icon(
                    Icons.delete_outline_outlined,
                    color: showPlayer ? RecorderConstants.primaryColor : RecorderConstants.scondaryColor,
                  ),
                  label: Text(
                    RecorderConstants.cancelRecording,
                    style:
                        showPlayer ? const TextStyle(color: RecorderConstants.primaryColor) : const TextStyle(color: RecorderConstants.scondaryColor),
                  ),
                  onPressed: showPlayer
                      ? () {
                          setState(() {
                            showPlayer = false;
                          });
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: showPlayer
                          ? const BorderSide(color: RecorderConstants.primaryColor, width: 2)
                          : const BorderSide(color: RecorderConstants.scondaryColor, width: 2),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton.icon(
                  icon: const Icon(Icons.my_library_books_rounded),
                  label: const Text(RecorderConstants.submitRecoring),
                  onPressed: showPlayer
                      ? () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ListView(
                                    shrinkWrap: true,
                                    children: [
                                      const SizedBox(height: 30),
                                      const Icon(Icons.mic, size: 60),
                                      const SizedBox(height: 30),
                                      const Center(
                                        child: Text(
                                          RecorderConstants.submitRecordingWithQuestion,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: RecorderConstants.fontFamilyArchivo,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 30),
                                      const Center(
                                        child: Text(
                                          RecorderConstants.areYouDone,
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: RecorderConstants.fontFamilyRoboto,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      const Center(
                                        child: RichTextWidget(),
                                      ),
                                      const SizedBox(height: 30),
                                      Column(
                                        children: [
                                          SizedBox(
                                            width: 200,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                setState(() {
                                                  showPlayer = false;
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: RecorderConstants.primaryColor,
                                                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(50.0),
                                                  side: const BorderSide(color: RecorderConstants.primaryColor, width: 2),
                                                ),
                                              ),
                                              child: const Text(
                                                RecorderConstants.submitRecoring,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: RecorderConstants.fontFamilyRoboto,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          SizedBox(
                                            width: 200,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(50.0),
                                                  side: const BorderSide(color: RecorderConstants.primaryColor, width: 2),
                                                ),
                                              ),
                                              child: const Text(
                                                RecorderConstants.cancel,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: RecorderConstants.primaryColor,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: RecorderConstants.fontFamilyRoboto,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: RecorderConstants.primaryColor,
                    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: showPlayer
                          ? const BorderSide(color: RecorderConstants.primaryColor, width: 2)
                          : const BorderSide(color: RecorderConstants.scondaryColor, width: 2),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: RecorderConstants.thisWillGenerate,
        style: DefaultTextStyle.of(context).style,
        children: const <TextSpan>[
          TextSpan(
            text: RecorderConstants.visitSummaryDocument,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              fontFamily: RecorderConstants.fontFamilyRoboto,
            ),
          ),
        ],
      ),
    );
  }
}
