import 'package:flutter/material.dart';
import 'package:recorder_poc/new_audio/new_audio_player.dart';

class VisitSummary extends StatefulWidget {
  const VisitSummary({Key? key, required this.source}) : super(key: key);

  final String source;

  @override
  State<VisitSummary> createState() => _VisitSummaryState();
}

class _VisitSummaryState extends State<VisitSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visit Summary"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NewAudioPlayer(
            source: widget.source,
            onDelete: () {},
          ),
          SizedBox(height: 40),
          IconButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              icon: Icon(Icons.edit))
        ],
      ),
    );
  }
}
