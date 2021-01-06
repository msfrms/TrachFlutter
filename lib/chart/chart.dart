import 'package:Trach/chart/track.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

@immutable
class ChartProps {
  final List<TrackProps> tracks;
  ChartProps({this.tracks});
}

@immutable
class ChartWidget extends StatelessWidget {

  final ChartProps props;

  ChartWidget(this.props);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8.0),
      physics: BouncingScrollPhysics(),
      itemCount: props.tracks.length,
      itemBuilder: (context, index) {
        return TrackWidget(props.tracks[index]);
      },
      scrollDirection: Axis.vertical
    );
  }
}