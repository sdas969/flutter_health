import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_health/constants.dart';
import 'package:flutter_health/widgets/connection_status.dart';
import 'package:flutter_health/widgets/metric_card.dart';
import 'package:flutter_health/widgets/user_info.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(FontAwesomeIcons.alignCenter)),
        title: const Text('PROFILE'));
    List<MetricCard> metricCards = [
      MetricCard(
          begin: temperatureCardColorDark,
          end: temperatureCardColorLight,
          value: '$currentTemperature °C',
          title: 'Temperature',
          icon: Icon(LineIcons.thermometer, color: cardTextColor)),
      MetricCard(
          begin: batteryCardColorDark,
          end: batteryCardColorLight,
          value: '$currentBattery %',
          title: 'Battery',
          icon: Transform.rotate(
              angle: -90 * pi / 180,
              child: Icon(LineIcons.batteryAlt4Full, color: cardTextColor))),
      MetricCard(
          begin: ecgCardColorDark,
          end: ecgCardColorLight,
          value: '$currentECG',
          title: 'ECG',
          icon: Icon(LineIcons.heartbeat, color: cardTextColor))
    ];
    return Scaffold(
        appBar: appBar,
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
              height: MediaQuery.of(context).size.longestSide * 0.60,
              child: Stack(
                  alignment: Alignment.topCenter,
                  children: const [UserInfo(), ConnectionStatus()])),
          const SizedBox(height: 16),
          Row(children: metricCards)
        ])));
  }
}
