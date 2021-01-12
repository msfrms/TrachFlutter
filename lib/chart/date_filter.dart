import 'package:Trach/chart/border.dart';
import 'package:Trach/core/text_styles.dart';
import 'package:Trach/gen/assets.gen.dart';
import 'package:Trach/gen/colors.gen.dart';
import 'package:flutter/material.dart';

@immutable
class DateFilterTitleProps {
  final String title;
  final Function onTap;

  DateFilterTitleProps({this.title, this.onTap});
}

@immutable
class DateFilterProps {
  final DateFilterTitleProps header;
  final Function onNext;
  final Function onPrev;

  DateFilterProps({this.header, this.onNext, this.onPrev});
}

@immutable
class DateFilterWidget extends StatelessWidget {

  final DateFilterProps props;

  DateFilterWidget({this.props});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BorderWidget(
          child: Row(
            children: [
              GestureDetector(
                child: Container(
                  child: Image(
                      image: Assets.images.arrowOutLeft,
                      color: props.onPrev == null ? ColorName.grayD2 : ColorName.black
                  ),
                  width: 20,
                  height: 20,
                ),
                onTap: props.onPrev,
              ),
              GestureDetector(
                child: Text(props.header.title, style: TextStyles.light(fontSize: 16)),
                onTap: props.header.onTap,
              ),
              GestureDetector(
                child: Container(
                  child: Image(
                      image: Assets.images.arrowOutRight,
                      color: props.onNext == null ? ColorName.grayD2 : ColorName.black
                  ),
                  width: 20,
                  height: 20,
                ),
                onTap: props.onNext,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          )
      ),
      width: 160,
    );
  }
}