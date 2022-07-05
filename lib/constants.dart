import 'package:flutter/material.dart';

enum Status { connected, disconnected }

const String userName = 'John Doe';
const String userLocation = 'San Francisco, CA';
const String deviceID = 'XD12-B12-Z22';

const Status currentStatus = Status.disconnected;

const double currentTemperature = 65;
const int currentBattery = 100;
const int currentECG = 100;

const Color innerCircleColor = Color(0xffe0b8c6);
const Color middleCircleColor = Color(0xfffcbd8a);
const Color outerCircleColor = Color(0xff45cdcd);
const Color inactiveCircleColor = Color(0xffeffbf7);
const Color appBarColor = Color(0xff55c597);
const Color temperatureCardColorDark = Color(0xff397373);
const Color temperatureCardColorLight = Color(0xff48bfc0);
const Color batteryCardColorDark = Color(0xff9a7252);
const Color batteryCardColorLight = Color(0xfff3b783);
const Color ecgCardColorDark = Color(0xff8e707b);
const Color ecgCardColorLight = Color(0xffe1afc0);
const Color appButtonColor = Color(0xff1f526d);
const Color profileBackgroundColor = Color(0xff7cd2ad);
final Color cardTextColor = Colors.white.withOpacity(0.5);
