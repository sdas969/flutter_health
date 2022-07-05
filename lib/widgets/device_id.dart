import 'package:flutter/material.dart';
import 'package:flutter_health/constants.dart';

class DeviceID extends StatelessWidget {
  const DeviceID({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
        Text('Device ID',
            style: TextStyle(color: Colors.grey), textAlign: TextAlign.left),
        Text(deviceID,
            style: TextStyle(
                fontSize: 24,
                color: appButtonColor,
                fontWeight: FontWeight.bold))
      ]);
}
