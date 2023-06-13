import 'package:flutter/material.dart';
import 'package:landing_page_boilerplate/ui/shared_widgets/buttons/back_button.dart';

class BlueView extends StatelessWidget {
  final String param;
  const BlueView({
    super.key,
    required this.param,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          const CustomBackButton(),
          Text(
            'BlueView Params: $param',
          ),
        ],
      ),
    );
  }
}
