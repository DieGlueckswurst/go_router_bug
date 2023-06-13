import 'package:go_router/go_router.dart';
import 'package:landing_page_boilerplate/ui/views/green.dart';

import 'package:landing_page_boilerplate/ui/views/home/home_view.dart';
import 'package:landing_page_boilerplate/ui/views/red.dart';
import 'package:landing_page_boilerplate/ui/views/yellow.dart';

import 'native_page_transition.dart';

final GoRouter router = GoRouter(
  initialLocation: HomeView.path,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: HomeView.path,
      name: HomeView.name,
      pageBuilder: (context, state) => NativePageTransition(
        screenToTransition: const HomeView(),
        key: state.pageKey,
        restorationId: state.pageKey.value,
      ),
      routes: [
        GoRoute(
          name: 'green',
          path: ':green',
          pageBuilder: (context, state) => NativePageTransition(
            screenToTransition: GreenView(
              param: state.params['green']!,
            ),
            key: state.pageKey,
            restorationId: state.pageKey.value,
          ),
        ),
        GoRoute(
          name: 'red',
          path: ':red',
          pageBuilder: (context, state) => NativePageTransition(
            screenToTransition: RedView(
              param: state.params['red']!,
            ),
            key: state.pageKey,
            restorationId: state.pageKey.value,
          ),
        ),
        GoRoute(
          name: 'yellow',
          path: ':yellow',
          pageBuilder: (context, state) => NativePageTransition(
            screenToTransition: YellowView(
              param: state.params['yellow']!,
            ),
            key: state.pageKey,
            restorationId: state.pageKey.value,
          ),
        ),
      ],
    ),
  ],
);
