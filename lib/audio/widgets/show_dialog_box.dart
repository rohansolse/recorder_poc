import 'package:flutter/material.dart';
import 'package:recorder_poc/audio/widgets/recorders_widget.dart';
import 'package:recorder_poc/constants.dart';

class ShowDialogWidget extends StatelessWidget {
  const ShowDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
                elevatedButtonWidget(
                  width: 200,
                  text: RecorderConstants.submitRecoring,
                  backgroundColor: RecorderConstants.primaryColor,
                  borderColor: RecorderConstants.primaryColor,
                  textColor: RecorderConstants.whiteColor,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(height: 5),
                elevatedButtonWidget(
                  width: 200,
                  text: RecorderConstants.cancel,
                  backgroundColor: RecorderConstants.whiteColor,
                  borderColor: RecorderConstants.primaryColor,
                  textColor: RecorderConstants.primaryColor,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
