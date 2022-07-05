import 'package:flutter/material.dart';
import 'package:flutter_health/constants.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
      height: MediaQuery.of(context).size.longestSide * 0.35,
      color: appBarColor,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
                radius: 50,
                backgroundColor: profileBackgroundColor,
                foregroundColor: Colors.white,
                child: Icon(Icons.person, size: 50)),
            const SizedBox(width: 16),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(userName,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  Text(userLocation, style: TextStyle(color: Colors.white))
                ])
          ]));
}
