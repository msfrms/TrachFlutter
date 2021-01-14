import 'package:Trach/chart/chart.dart';
import 'package:Trach/chart/date_filter.dart';
import 'package:Trach/chart/filter.dart';
import 'package:flutter/material.dart';

import 'chart/filter_group.dart';
import 'chart/position.dart';
import 'chart/track.dart';
import 'core/trach.dart';

void main() {
  runApp(TrachApp());
}

class TrachApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // TODO: убрать фейковые данные и заменить на StatefulWidget c запросами в network
    var tracks = [
      TrackProps(
          position: PositionProps(
              value: "1",
              change: PositionChangeProps(
                  value: "2",
                  change: PositionChange.decrement
              )
          ),
          coverUrl: "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
          title: "Kosandra",
          artists: "Miyagi & Andy Panda"
      ),
      TrackProps(
          position: PositionProps(
              value: "1",
              change: PositionChangeProps(
                  value: "2",
                  change: PositionChange.decrement
              )
          ),
          coverUrl: "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
          title: "Kosandra",
          artists: "Miyagi & Andy Panda"
      ),
      TrackProps(
          position: PositionProps(
              value: "1",
              change: PositionChangeProps(
                  value: "2",
                  change: PositionChange.decrement
              )
          ),
          coverUrl: "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
          title: "Kosandra",
          artists: "Miyagi & Andy Panda"
      ),
      TrackProps(
          position: PositionProps(
              value: "1",
              change: PositionChangeProps(
                  value: "2",
                  change: PositionChange.decrement
              )
          ),
          coverUrl: "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
          title: "Kosandra",
          artists: "Miyagi & Andy Panda"
      ),
      TrackProps(
          position: PositionProps(
              value: "1",
              change: PositionChangeProps(
                  value: "2",
                  change: PositionChange.decrement
              )
          ),
          coverUrl: "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
          title: "Kosandra",
          artists: "Miyagi & Andy Panda"
      ),
      TrackProps(
          position: PositionProps(
              value: "1",
              change: PositionChangeProps(
                  value: "2",
                  change: PositionChange.decrement
              )
          ),
          coverUrl: "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
          title: "Kosandra",
          artists: "Miyagi & Andy Panda"
      ),
      TrackProps(
          position: PositionProps(
              value: "1",
              change: PositionChangeProps(
                  value: "2",
                  change: PositionChange.decrement
              )
          ),
          coverUrl: "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
          title: "Kosandra",
          artists: "Miyagi & Andy Panda"
      ),
      TrackProps(
          position: PositionProps(
              value: "1",
              change: PositionChangeProps(
                  value: "2",
                  change: PositionChange.decrement
              )
          ),
          coverUrl: "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
          title: "Kosandra",
          artists: "Miyagi & Andy Panda"
      ),
      TrackProps(
          position: PositionProps(
              value: "1",
              change: PositionChangeProps(
                  value: "2",
                  change: PositionChange.decrement
              )
          ),
          coverUrl: "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
          title: "Kosandra",
          artists: "Miyagi & Andy Panda"
      ),
      TrackProps(
          position: PositionProps(
              value: "1",
              change: PositionChangeProps(
                  value: "2",
                  change: PositionChange.decrement
              )
          ),
          coverUrl: "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
          title: "Kosandra",
          artists: "Miyagi & Andy Panda"
      ),
      TrackProps(
          position: PositionProps(
              value: "1",
              change: PositionChangeProps(
                  value: "2",
                  change: PositionChange.decrement
              )
          ),
          coverUrl: "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
          title: "Kosandra",
          artists: "Miyagi & Andy Panda"
      ),
      TrackProps(
          position: PositionProps(
              value: "1",
              change: PositionChangeProps(
                  value: "2",
                  change: PositionChange.decrement
              )
          ),
          coverUrl: "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
          title: "Kosandra",
          artists: "Miyagi & Andy Panda"
      ),
      TrackProps(
          position: PositionProps(
              value: "1",
              change: PositionChangeProps(
                  value: "2",
                  change: PositionChange.decrement
              )
          ),
          coverUrl: "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
          title: "Kosandra",
          artists: "Miyagi & Andy Panda"
      ),
      TrackProps(
          position: PositionProps(
              value: "1",
              change: PositionChangeProps(
                  value: "2",
                  change: PositionChange.decrement
              )
          ),
          coverUrl: "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
          title: "Kosandra",
          artists: "Miyagi & Andy Panda"
      ),
      TrackProps(
          position: PositionProps(
              value: "1",
              change: PositionChangeProps(
                  value: "2",
                  change: PositionChange.decrement
              )
          ),
          coverUrl: "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
          title: "Kosandra",
          artists: "Miyagi & Andy Panda"
      )
    ];
    // "Упс, что то пошло не так! Мы уже работаем над этой проблемой."
    var chart = ChartWidget(
        ChartProps.tracks(tracks)
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        accentColor: Colors.white,
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: Trach.appBar(),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 20),
              child: FilterGroupWidget(
                props: FilterGroupProps(
                    platform: FilterProps(title: "Яндекс.Музыка"),
                    date: DateFilterProps(header: DateFilterTitleProps(title: "08.08.2020"))
                ),
              ),
            ),
            Expanded(child: Padding(padding: EdgeInsets.all(8), child: chart))
          ],
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
