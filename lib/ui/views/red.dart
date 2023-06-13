import 'package:flutter/material.dart';
import 'package:landing_page_boilerplate/ui/shared_widgets/buttons/back_button.dart';

class RedView extends StatelessWidget {
  final String param;
  const RedView({
    super.key,
    required this.param,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          const CustomBackButton(),
          Text(
            'RedView Params: $param',
          ),
        ],
      ),
    );
  }
}
