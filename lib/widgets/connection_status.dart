import 'package:flutter/material.dart';
import 'package:flutter_health/widgets/connect_disconnect_button.dart';
import 'package:flutter_health/widgets/device_id.dart';
import 'package:flutter_health/widgets/progress_chart.dart';

class ConnectionStatus extends StatelessWidget {
  const ConnectionStatus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Positioned(
      bottom: 0,
      child: Card(
          elevation: 8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                const ProgressChart(),
                const Divider(height: 5),
                Row(children: const [
                  DeviceID(),
                  SizedBox(width: 16),
                  ConnectDisconnectButton()
                ])
              ]))));
}
