import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CardProfile extends StatelessWidget {
  final int color;
  final String title;
  final String subtitle;
  final Icon icon;
  const CardProfile(
      {Key? key,
      required this.icon,
      required this.title,
      required this.subtitle,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: Color(color)),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            icon,
            separator15V,
            Text(
              title,
              style: const TextStyle(fontSize: 14.0),
            ),
            separator10V,
            Text(
              subtitle,
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            separator10V,
            const Icon(Icons.arrow_right_alt)
          ],
        ),
      ),
    );
  }
}
