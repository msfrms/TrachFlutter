import 'package:Trach/chart/chart.dart';
import 'package:flutter/material.dart';

import 'chart/position.dart';
import 'chart/track.dart';
import 'core/trach.dart';

void main() {
  runApp(TrachApp());
}

class TrachApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

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
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        accentColor: Colors.white,
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: Trach.appBar(),
        body: chart,
        backgroundColor: Colors.white,
      ),
    );
  }
}
