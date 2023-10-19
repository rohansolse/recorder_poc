import 'package:flutter/material.dart';
import 'package:recorder_poc/constants.dart';

enum Status {
  pending,
  approved,
  rejected,
  noRecording,
}

class StatusInfo {
  final String text;
  final Color textColor;
  final Color bgColor;

  StatusInfo(
    this.text,
    this.textColor,
    this.bgColor,
  );
}

Map<Status, StatusInfo> statusMap = {
  Status.pending: StatusInfo(
    'Visit Summary Pending Review',
    AppConstants.pendingTextColor,
    AppConstants.pendingBgColor,
  ),
  Status.approved: StatusInfo(
    'Visit Summary Approved',
    AppConstants.approveTextColor,
    AppConstants.approveBgColor,
  ),
  Status.rejected: StatusInfo(
    'Visit Summary Rejected',
    AppConstants.rejectedTextColor,
    AppConstants.rejectedBgColor,
  ),
  Status.noRecording: StatusInfo(
    'No Recording',
    AppConstants.noRecordingTextColor,
    AppConstants.noRecordingBgColor,
  ),
};
