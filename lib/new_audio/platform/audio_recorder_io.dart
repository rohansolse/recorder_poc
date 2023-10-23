import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';

mixin AudioRecorderMixin {
  Future<void> recordFile(AudioRecorder recorder, RecordConfig config, bool isEditing, String path) async {
    // final path = await _getPath();

    // final randomName = 'finalAudioPath${getRandomInteger()}';
    // final directory = await getApplicationDocumentsDirectory();
    // String savePath = '${directory.path}/$randomName';
    // print("voicePath is $savePath");

    // final randomName = 'finalAudioPath${getRandomInteger()}';
    // final directory = await getExternalStorageDirectory();
    // String savePath = '${directory!.path}/$randomName.m4a';
    // print("savePath when recording starts is $savePath");
    //
    // isEditing ? await recorder.start(config, path: path) :
    // await recorder.start(config, path: savePath);
    //
    // return savePath;

    final path = await _getPath();

    await recorder.start(config, path: path);
  }

  int getRandomInteger() {
    final random = Random();
    return random.nextInt(1000);
  }

  Future<void> recordStream(AudioRecorder recorder, RecordConfig config) async {
    final file = File(await _getPath());

    final stream = await recorder.startStream(config);

    stream.listen(
      (data) {
        // ignore: avoid_print
        print(
          recorder.convertBytesToInt16(Uint8List.fromList(data)),
        );
        file.writeAsBytesSync(data, mode: FileMode.append);
      },
      // ignore: avoid_print
      onDone: () => print('End of stream'),
    );
  }

  void downloadWebData(String path) {}

  Future<String> _getPath() async {
    final dir = await getApplicationDocumentsDirectory();
    return p.join(
      dir.path,
      'audio_${DateTime.now().millisecondsSinceEpoch}.m4a',
    );
  }
}
