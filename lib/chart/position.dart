import 'package:Trach/gen/assets.gen.dart';
import 'package:Trach/gen/colors.gen.dart';
import 'package:Trach/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            Text(props.value,
                style: TextStyle(
                    color: ColorName.green,
                    fontFamily: FontFamily.roboto,
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                )
            )
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
            Text(props.value,
                style: TextStyle(
                    color: ColorName.red,
                    fontFamily: FontFamily.roboto,
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                )
            )
          ],
        );
        break;
      case PositionChange.unchanged:
        widget = Text("–",
            style: TextStyle(
                color: ColorName.gray9F,
                fontFamily: FontFamily.roboto,
                fontWeight: FontWeight.w500,
                fontSize: 16
            )
        );
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
            child: Text(props.value,
                style: TextStyle(
                    color: ColorName.black,
                    fontFamily: FontFamily.roboto,
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                )
            )
        ),
        PositionChangeWidget(props.change)
      ],
    );
  }
}