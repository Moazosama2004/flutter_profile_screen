import 'package:flutter/material.dart';

class MainDetails extends StatelessWidget {
  const MainDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/images/moaz.jpeg'),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Moaz Osama Ahmed',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Junior Flutter Developer',
        ),
      ],
    );
  }
}
