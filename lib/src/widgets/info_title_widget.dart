import 'package:flutter/material.dart';

class InfoTitle extends StatelessWidget {
  const InfoTitle({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final title;
  final subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 5),
        Text(
          subtitle,
          style: TextStyle(
            color: Colors.white70,
          ),
        )
      ],
    );
  }
}
