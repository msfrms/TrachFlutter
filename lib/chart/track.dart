import 'package:Trach/chart/position.dart';
import 'package:Trach/chart/track_placeholder.dart';
import 'package:Trach/core/text_styles.dart';
import 'package:Trach/gen/assets.gen.dart';
import 'package:Trach/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shimmer/shimmer.dart';

@immutable
class TrackProps {
  final PositionProps position;
  final String coverUrl;
  final String title;
  final String artists;
  final bool placeholderEnabled;
  TrackProps({this.position, this.coverUrl, this.title, this.artists, this.placeholderEnabled = false});
}

@immutable
class TrackWidget extends StatelessWidget {

  final TrackProps props;

  TrackWidget(this.props);

  @override
  Widget build(BuildContext context) {
    Widget coverWidget = Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(3.0),
        child: SizedBox(
          child: Image.network(props.coverUrl),
          height: 60,
          width: 60,
        ),
      ),
    );

    Widget content = Row(
      children: [
        PositionWidget(props.position),
        coverWidget,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Text(props.title, style: TextStyles.medium(fontSize: 16, color: ColorName.black))
            ),
            Text(props.artists, style: TextStyles.regular(fontSize: 16, color: ColorName.gray9F))
          ],
        )
      ],
    );

    if (props.placeholderEnabled)
      return Shimmer.fromColors(
          child: Padding(padding: EdgeInsets.all(8), child: TrackPlaceholderWidget()),
          baseColor: Colors.grey[300],
          highlightColor: Colors.grey[100]
      );
    else
      return Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            content,
            Image(image: Assets.images.more),
          ],
        ),
      );
  }
}