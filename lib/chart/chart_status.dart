import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'track.dart';

part 'chart_status.freezed.dart';

@freezed
abstract class ChartStatus with _$ChartStatus {
  const factory ChartStatus.tracks(List<TrackProps> value) = ListOfTrack;
  const factory ChartStatus.inProgress() = InProgress;
  const factory ChartStatus.failed([String message]) = Failed;
}
