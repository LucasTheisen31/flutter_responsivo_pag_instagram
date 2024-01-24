import 'package:exemplo2_instagram_feito_por_lucas/pages/home/widgets/post_widget.dart';
import 'package:exemplo2_instagram_feito_por_lucas/pages/home/widgets/responsive_app_bar.dart';
import 'package:exemplo2_instagram_feito_por_lucas/pages/home/widgets/right_panel.dart';
import 'package:exemplo2_instagram_feito_por_lucas/pages/home/widgets/stories_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('Largura ${MediaQuery.of(context).size.width}');
    debugPrint('Altura ${MediaQuery.of(context).size.height}');

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 52),
        child: ResponsiveAppBar(),
      ),
      backgroundColor: Colors.transparent,
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: Row(
            children: [
              Expanded(
                child: ListView(
                  children: const [
                    StoriesList(),
                    PostWidget(),
                    PostWidget(),
                    PostWidget(),
                  ],
                ),
              ),
              const RightPanel(),
            ],
          ),
        ),
      ),
    );
  }
}
