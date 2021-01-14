import 'package:Trach/chart/track.dart';
import 'package:Trach/chart/track_placeholder.dart';
import 'package:Trach/core/empty.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:shimmer/shimmer.dart';
part 'chart.freezed.dart';

@freezed
abstract class ChartProps with _$ChartProps {
  const factory ChartProps.tracks(List<TrackProps> value) = ListOfTrack;
  const factory ChartProps.inProgress() = InProgress;
  const factory ChartProps.failed([String message]) = Failed;
}

@immutable
class ChartWidget extends StatelessWidget {
  final ChartProps props;

  ChartWidget(this.props);

  @override
  Widget build(BuildContext context) {
    return props.when(
        tracks: (value) => ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: value.length,
            itemBuilder: (context, index) {
              return TrackWidget(value[index]);
            },
            scrollDirection: Axis.vertical),
        inProgress: () => Shimmer.fromColors(
            child: Column(children: List.filled(10, Padding(
                padding: EdgeInsets.all(8),
                child: TrackPlaceholderWidget()))
            ),
            baseColor: Colors.grey[300],
            highlightColor: Colors.grey[100]
        ),
        failed: (error) => Padding(padding: EdgeInsets.all(10), child: EmptyWidget(error)));
  }
}
