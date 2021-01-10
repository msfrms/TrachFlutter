import 'package:Trach/core/text_styles.dart';
import 'package:Trach/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@immutable
class EmptyWidget extends StatelessWidget {

  final String props;

  EmptyWidget(this.props);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
        padding: EdgeInsets.only(right: 10),
        child: SizedBox(
          child: Image(image: Assets.images.warning),
          width: 20,
          height: 20
        )
      ),
      Flexible(child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(props, style: TextStyles.regular(fontSize: 14))
      ))
    ]);
  }
}