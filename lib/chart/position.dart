import 'package:Trach/gen/assets.gen.dart';
import 'package:Trach/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:Trach/core/text_styles.dart';

enum PositionChange {
  increment, decrement, unchanged
}

@immutable
class PositionChangeProps {
  final PositionChange change;
  final String value;
  PositionChangeProps({this.value, this.change});
}

@immutable
class PositionChangeWidget extends StatelessWidget {
  final PositionChangeProps props;

  PositionChangeWidget(this.props);

  @override
  Widget build(BuildContext context) {
    Widget widget;
    switch (props.change) {

      case PositionChange.increment:
        widget = Row(
          children: [
            Padding(
                padding: EdgeInsets.only(right: 3),
                child: SizedBox(
                    child: Image(image: Assets.images.arrowFillUp),
                    width: 10,
                    height: 10
                )
            ),
            Text(props.value, style: TextStyles.medium(fontSize: 16, color: ColorName.green))
          ],
        );
        break;
      case PositionChange.decrement:
        widget = Row(
          children: [
            Padding(
                padding: EdgeInsets.only(right: 3),
                child: SizedBox(
                    child: Image(image: Assets.images.arrowFillDown),
                    width: 10,
                    height: 10
                )
            ),
            Text(props.value, style: TextStyles.medium(fontSize: 16, color: ColorName.red))
          ],
        );
        break;
      case PositionChange.unchanged:
        widget = Text("–", style: TextStyles.medium(fontSize: 16, color: ColorName.gray9F));
        break;
    }
    return widget;
  }
}

@immutable
class PositionProps {
  final String value;
  final PositionChangeProps change;
  PositionProps({this.value, this.change});
}

@immutable
class PositionWidget extends StatelessWidget {

  final PositionProps props;

  PositionWidget(this.props);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Text(props.value, style: TextStyles.medium(fontSize: 16, color: ColorName.black))
        ),
        PositionChangeWidget(props.change)
      ],
    );
  }
}