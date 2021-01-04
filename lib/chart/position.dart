import 'package:flutter/widgets.dart';

enum PositionChange {
  increment, decrement, unchanged
}

@immutable
class PositionChangeProps {
  final PositionChange change;
  final String value;
  PositionChangeProps(this.value, this.change);
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
                    child: Image(image: AssetImage('resources/arrow_fill_up.png')),
                    width: 10,
                    height: 10
                )
            ),
            Text(props.value)
          ],
        );
        break;
      case PositionChange.decrement:
        widget = Row(
          children: [
            Padding(
                padding: EdgeInsets.only(right: 3),
                child: SizedBox(
                    child: Image(image: AssetImage('resources/arrow_fill_down.png')),
                    width: 10,
                    height: 10
                )
            ),
            Text(props.value)
          ],
        );
        break;
      case PositionChange.unchanged:
        widget = Text("-");
        break;
    }
    return widget;
  }
}

@immutable
class PositionProps {
  final String value;
  final PositionChangeProps change;
  PositionProps(this.value, this.change);
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
        Padding(padding: EdgeInsets.only(bottom: 5), child: Text(props.value)),
        PositionChangeWidget(props.change)
      ],
    );
  }
}