import 'package:Trach/chart/position.dart';
import 'package:Trach/core/text_styles.dart';
import 'package:Trach/gen/assets.gen.dart';
import 'package:Trach/gen/colors.gen.dart';
import 'package:flutter/widgets.dart';

@immutable
class TrackProps {
  final PositionProps position;
  final String coverUrl;
  final String title;
  final String artists;
  TrackProps({this.position, this.coverUrl, this.title, this.artists});
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

    return Padding(
      padding: EdgeInsets.all(10),
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