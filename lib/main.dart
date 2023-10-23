import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:recorder_poc/new_audio/new_audio_player.dart';
import 'package:recorder_poc/new_audio/new_audio_recorder.dart';
import 'package:recorder_poc/new_audio/visit_summary.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VoiceRecorder(),
    );
  }
}

class VoiceRecorder extends StatefulWidget {
  const VoiceRecorder({Key? key}) : super(key: key);

  @override
  State<VoiceRecorder> createState() => _VoiceRecorderState();
}

class _VoiceRecorderState extends State<VoiceRecorder> {
  bool showPlayer = false;
  String? audioPath;
  bool isEditing = false;
  bool continueRecording = false;
  int recordDuration = 0;

  @override
  void initState() {
    showPlayer = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
    //     Center(
    //       child: NewAudioPlayer(
    //   source: '/data/user/0/com.example.recorder_poc/app_flutter/finalAudioPath505.wav',
    //   onDelete: () {
    //       setState(() => showPlayer = false);
    //   },
    // ),
    //     )
        Recorder()
        );
  }
}

// class VoiceRecorder extends StatefulWidget {
//   const VoiceRecorder({Key? key}) : super(key: key);
//
//   @override
//   State<VoiceRecorder> createState() => _VoiceRecorderState();
// }
//
// class _VoiceRecorderState extends State<VoiceRecorder> {
//   bool showPlayer = false;
//   String? audioPath;
//   bool isEditing = false;
//   bool continueRecording = false;
//   int recordDuration = 0;
//
//   @override
//   void initState() {
//     showPlayer = false;
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           isEditing
//               ? Text("Please continue the recording")
//               : SizedBox(height: 0),
//           SizedBox(height: 40),
//           Center(
//             child: showPlayer
//                 ? Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 25),
//                     child: NewAudioPlayer(
//                       source: audioPath!,
//                       onDelete: () {
//                         setState(() => showPlayer = false);
//                       },
//                     ),
//                   )
//                 : Recorder(
//                     continueRecording: continueRecording,
//                     voiceDuration: recordDuration,
//                     onStop: (path, duration) {
//                       if (kDebugMode) print('Recorded file path: $path');
//                       setState(() {
//                         audioPath = path;
//                         recordDuration = duration;
//                         showPlayer = true;
//                       });
//                     },
//                   ),
//           ),
//           SizedBox(height: 40),
//           ElevatedButton(
//             child: const Text(
//               'Submit',
//               style: TextStyle(fontSize: 24.0),
//             ),
//             onPressed: () async {
//               // isEditing = await Navigator.of(context).push(MaterialPageRoute(
//               //     builder: (context) => VisitSummary(source: audioPath!)));
//               setState(() {
//                 isEditing = true;
//                 showPlayer = false;
//                 continueRecording = true;
//               });
//               print("isEditing after pop is $isEditing");
//               print("continueRecording after pop is $continueRecording");
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
