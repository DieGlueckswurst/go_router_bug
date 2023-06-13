import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page_boilerplate/ui/shared_widgets/buttons/rounded_border_button.dart';

import '../../../constants/text_styles.dart';

class HomeView extends StatefulWidget {
  static const String name = 'home';
  static const String path = '/';
  const HomeView({Key? key}) : super(key: key);

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 100,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  padding: const EdgeInsets.all(30),
                  child: Center(
                    child: AutoSizeText(
                      'Go Router Example',
                      style: AppTextStyles.skModernistH1Bold,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 50,
                  runSpacing: 20,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RoundedBorderButton(
                          onTap: () {
                            GoRouter.of(context).pushNamed(
                              'green',
                              params: {'green': 'green data'},
                            );
                          },
                          title: 'Green',
                          color: Colors.green,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RoundedBorderButton(
                          onTap: () {
                            GoRouter.of(context).pushNamed(
                              'red',
                              params: {'red': 'red data'},
                            );
                          },
                          title: 'Red',
                          color: Colors.red,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RoundedBorderButton(
                          onTap: () {
                            GoRouter.of(context).pushNamed(
                              'yellow',
                              params: {'yellow': 'yellow data'},
                            );
                          },
                          title: 'Yellow',
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
