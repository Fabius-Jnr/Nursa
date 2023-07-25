import 'package:flutter/material.dart';

class Accessories extends StatelessWidget {
  const Accessories({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Kids ward
        ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Resources',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            )),

        // emmergency ward
        ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Others',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            )),
      ],
    );
  }
}
