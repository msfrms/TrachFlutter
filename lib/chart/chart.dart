import 'package:Trach/chart/track.dart';
import 'package:Trach/chart/track_placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:shimmer/shimmer.dart';
import 'chart_status.dart';

@immutable
class ChartProps {
  final ChartStatus status;
  ChartProps({this.status});
}

@immutable
class ChartWidget extends StatelessWidget {
  final ChartProps props;

  ChartWidget(this.props);

  @override
  Widget build(BuildContext context) {
    return props.status.when(
        tracks: (value) => ListView.builder(
            padding: EdgeInsets.all(8.0),
            physics: BouncingScrollPhysics(),
            itemCount: value.length,
            itemBuilder: (context, index) {
              return TrackWidget(value[index]);
            },
            scrollDirection: Axis.vertical),
        inProgress: () {
          return Shimmer.fromColors(
              child: Column(children: List.filled(10, Padding(
                  padding: EdgeInsets.all(8),
                  child: TrackPlaceholderWidget()))
              ),
              baseColor: Colors.grey[300],
              highlightColor: Colors.grey[100]
          );
        },
        failed: (error) {
          // TODO: реализовать отображение ошибки и пустого состояния
          return Text(error);
        });
  }
}
