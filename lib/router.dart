import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'features/home/view/home_screen.dart';
import 'features/details/view/details_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: '/details/:package',
      name: 'details',
      builder: (BuildContext context, GoRouterState state) {
        final packageName = state.pathParameters['package']!;
        return DetailsScreen(packageName: packageName);
      },
    ),
  ],
);
