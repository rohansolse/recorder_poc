import 'dart:html' as html;
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';

mixin AudioRecorderMixin {
  Future<void> recordFile(AudioRecorder recorder, RecordConfig config, bool isEditing, String path) async {
    // final randomName = 'finalAudioPath${getRandomInteger()}';
    // final directory = await getApplicationDocumentsDirectory();
    // String savePath = '${directory.path}/$randomName';
    // print("voicePath is $savePath");

    // final randomName = 'finalAudioPath${getRandomInteger()}';
    // final directory = await getExternalStorageDirectory();
    // String savePath = '${directory!.path}/$randomName';
    // print("savePath when recording starts is $savePath");
    //
    // isEditing ? await recorder.start(config, path: path) :
    // await recorder.start(config, path: savePath);
    //
    // return savePath;

    await recorder.start(config, path: '');
  }

  int getRandomInteger() {
    final random = Random();
    return random.nextInt(1000);
  }

  Future<void> recordStream(AudioRecorder recorder, RecordConfig config) async {
    final b = <Uint8List>[];
    final stream = await recorder.startStream(config);

    stream.listen(
      (data) => b.add(data),
      onDone: () => downloadWebData(html.Url.createObjectUrl(html.Blob(b))),
    );
  }

  void downloadWebData(String path) {
    // Simple download code for web testing
    final anchor = html.document.createElement('a') as html.AnchorElement
      ..href = path
      ..style.display = 'none'
      ..download = 'audio.wav';
    html.document.body!.children.add(anchor);
    anchor.click();
    html.document.body!.children.remove(anchor);
    html.Url.revokeObjectUrl(path);
  }
}
