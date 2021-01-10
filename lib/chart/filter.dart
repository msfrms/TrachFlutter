import 'package:Trach/chart/border.dart';
import 'package:Trach/core/text_styles.dart';
import 'package:Trach/gen/assets.gen.dart';
import 'package:flutter/material.dart';

@immutable
class FilterProps {
  final String title;
  final Function onTap;

  FilterProps({this.title, this.onTap});
}

@immutable
class FilterWidget extends StatelessWidget {

  final FilterProps props;

  FilterWidget({this.props});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        child: BorderWidget(
            child: Row(
              children: [
                Text(props.title, style: TextStyles.light(fontSize: 16)),
                Image(image: Assets.images.arrowOutDown)
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            )
        ),
        width: 160,
      ),
      onTap: props.onTap,
    );
  }
}