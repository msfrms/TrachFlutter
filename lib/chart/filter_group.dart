import 'package:flutter/material.dart';

import 'date_filter.dart';
import 'filter.dart';

@immutable
class FilterGroupProps {
  final FilterProps platform;
  final DateFilterProps date;

  FilterGroupProps({this.platform, this.date});
}

@immutable
class FilterGroupWidget extends StatelessWidget {

  final FilterGroupProps props;

  FilterGroupWidget({this.props});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FilterWidget(props: props.platform),
        DateFilterWidget(props: props.date)
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}