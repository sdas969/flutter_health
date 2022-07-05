import 'package:flutter/material.dart';
import 'package:flutter_health/constants.dart';

class ConnectDisconnectButton extends StatelessWidget {
  const ConnectDisconnectButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialButton(
      onPressed: () {},
      color: appButtonColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      textColor: Colors.white,
      child: Text(
          currentStatus == Status.disconnected ? 'Connect' : 'Disconnect'));
}
