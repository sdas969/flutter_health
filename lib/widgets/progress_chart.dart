import 'package:flutter/material.dart';
import 'package:flutter_health/constants.dart';

class ProgressChart extends StatelessWidget {
  const ProgressChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.all(16),
      child: Stack(alignment: Alignment.center, children: [
        const SizedBox(
            height: 150,
            width: 150,
            child: CircularProgressIndicator(
                strokeWidth: 10, color: inactiveCircleColor, value: 1)),
        const SizedBox(
            height: 150,
            width: 150,
            child: CircularProgressIndicator(
                strokeWidth: 10, color: outerCircleColor, value: 0.75)),
        const SizedBox(
            height: 120,
            width: 120,
            child: CircularProgressIndicator(
                strokeWidth: 10, color: middleCircleColor, value: 0.65)),
        const SizedBox(
            height: 90,
            width: 90,
            child: CircularProgressIndicator(
                strokeWidth: 10, color: innerCircleColor, value: 0.25)),
        Text(
          currentStatus == Status.disconnected ? 'Disconnected' : 'Connected',
          style: const TextStyle(
              color: appButtonColor, fontWeight: FontWeight.bold, fontSize: 12),
        )
      ]));
}
