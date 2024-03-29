import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveMenuAction extends StatelessWidget {
  const ResponsiveMenuAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: false,
          visibleWhen: const [
            Condition.smallerThan(name: TABLET),
          ],
          child: IconButton(icon: const Icon(Icons.search, color: Colors.white), onPressed: () {}),
        ),
        const SizedBox(width: 4),
        IconButton(onPressed: () {}, icon: const Icon(Icons.home, color: Colors.white)),
        const SizedBox(width: 4),
        IconButton(onPressed: () {}, icon: const Icon(Icons.send, color: Colors.white)),
        const SizedBox(width: 4),
        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border_outlined, color: Colors.white)),
        const SizedBox(width: 16),
        const CircleAvatar(
          radius: 16,
          backgroundImage: AssetImage('assets/images/perfil.jpg'),
        )
      ],
    );
  }
}
