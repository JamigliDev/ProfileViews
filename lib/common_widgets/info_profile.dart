import 'package:flutter/material.dart';

import '../utils/constants.dart';

class InfoProfile extends StatelessWidget {
  final String title;
  final String subtitle;
  const InfoProfile({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22.0),
        ),
        separator10V,
        Text(subtitle,
            style: const TextStyle(color: Colors.black, fontSize: 16.0))
      ],
    );
  }
}
