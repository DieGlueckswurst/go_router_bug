import 'package:flutter/material.dart';
import 'package:landing_page_boilerplate/ui/shared_widgets/buttons/back_button.dart';

class YellowView extends StatelessWidget {
  final String param;
  const YellowView({
    super.key,
    required this.param,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Column(
        children: [
          const CustomBackButton(),
          Text(
            'YellowView Params: $param',
          ),
        ],
      ),
    );
  }
}
