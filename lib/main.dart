import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Go Router Params Bug',
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}

final GoRouter router = GoRouter(
  initialLocation: HomeView.path,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: HomeView.path,
      name: HomeView.name,
      builder: (context, state) => const HomeView(),
      routes: [
        GoRoute(
          name: 'green',
          path: ':green',
          builder: (context, state) => GreenView(
            param: state.params['green']!,
          ),
        ),
        GoRoute(
          name: 'red',
          path: ':red',
          builder: (context, state) => RedView(
            param: state.params['red']!,
          ),
        ),
        GoRoute(
          name: 'yellow',
          path: ':yellow',
          builder: (context, state) => YellowView(
            param: state.params['yellow']!,
          ),
        ),
      ],
    ),
  ],
);

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Flexible(
            child: Text(
              'Go Router Multiple Routes with Params Bug',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              maxLines: 1,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
                onPressed: () {
                  GoRouter.of(context).pushNamed(
                    'green',
                    params: {'green': 'green data'},
                  );
                },
                child: const Text('Green'),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
                onPressed: () {
                  GoRouter.of(context).pushNamed(
                    'red',
                    params: {'red': 'red data'},
                  );
                },
                child: const Text('Red'),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.yellow),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
                onPressed: () {
                  GoRouter.of(context).pushNamed(
                    'yellow',
                    params: {'yellow': 'yellow data'},
                  );
                },
                child: const Text('Yellow'),
              )
            ],
          )
        ],
      ),
    );
  }
}

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
          const BackButton(),
          Text(
            'GreenView Params: $param',
          ),
        ],
      ),
    );
  }
}

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
          const BackButton(),
          Text(
            'RedView Params: $param',
          ),
        ],
      ),
    );
  }
}

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
          const BackButton(),
          Text(
            'YellowView Params: $param',
          ),
        ],
      ),
    );
  }
}
