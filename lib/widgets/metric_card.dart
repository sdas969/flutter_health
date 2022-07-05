import 'package:flutter/material.dart';
import 'package:flutter_health/constants.dart';

class MetricCard extends StatelessWidget {
  const MetricCard(
      {Key? key,
      required this.begin,
      required this.end,
      required this.icon,
      required this.title,
      required this.value})
      : super(key: key);
  final String title;
  final Widget icon;
  final String value;
  final Color begin;
  final Color end;

  @override
  Widget build(BuildContext context) => Expanded(
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [begin, end])),
              child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(children: [
                    Text(title,
                        style: TextStyle(
                            fontSize: 15,
                            color: cardTextColor,
                            fontWeight: FontWeight.bold)),
                    Row(children: [
                      icon,
                      Expanded(
                          child: Text(value,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: cardTextColor,
                                  fontWeight: FontWeight.bold)))
                    ])
                  ])))));
}
