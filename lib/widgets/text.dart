import 'package:flutter/material.dart';

class DiscoverText extends StatelessWidget {
  const DiscoverText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 8),
      child: const Text(
        'Discover a New Path',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
