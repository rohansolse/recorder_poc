import 'package:record/record.dart';

class AudioRecorderAppend {
  static AudioRecorder audioRecorder=  AudioRecorder();
  static RecordState recordState = RecordState.stop;

  static void updateRecordState(RecordState updatedRecordState) {
    recordState = updatedRecordState;
  }
}