import 'package:flutter/material.dart';

class Iconbuttons extends StatelessWidget {
  IconData? icon;
  VoidCallback url;

  Iconbuttons({
    super.key,
    this.icon,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(80.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(80),
        onTap: url,
        child: Icon(
          icon,
        ),
      ),
    );
  }
}
