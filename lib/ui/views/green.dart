import 'package:flutter/material.dart';
import 'package:landing_page_boilerplate/ui/shared_widgets/buttons/back_button.dart';

class GreenView extends StatelessWidget {
  final String param;
  const GreenView({
    super.key,
    required this.param,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          const CustomBackButton(),
          Text(
            'GreenView Params: $param',
          ),
        ],
      ),
    );
  }
}
