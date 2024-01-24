import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  const StoryCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 66,
          width: 66,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.green,
              ],
            ),
          ),
          child: Container(
            height: 61,
            width: 61,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.black87,
              shape: BoxShape.circle,
            ),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/perfil.jpg'),
              radius: 26,
            ),
          ),
        ),
        const Text(
          'Lucas',
          style: TextStyle(fontSize: 12, color: Colors.white),
        )
      ],
    );
  }
}
