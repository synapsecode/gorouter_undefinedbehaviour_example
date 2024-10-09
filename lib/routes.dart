import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_testfail_demo/main.dart';

final testRouter = GoRouter(
  // initialLocation: '/playground',
  navigatorKey: navigatorKey,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => Scaffold(
        body: Center(
          child: Column(
            children: [
              Text('gorouter /test undefined behaviour example'),
              ElevatedButton(
                onPressed: () {
                  context.go('/abc/test/123');
                },
                child: Text('Navigate to /abc/test/123'),
              )
            ],
          ),
        ),
      ),
    ),
    GoRoute(
      path: '/abc/test/:tid',
      builder: (context, state) => Scaffold(
        body: Text(state.pathParameters['tid']!),
      ),
    ),
    GoRoute(
      path: '/abc/test2/:tid',
      builder: (context, state) => Scaffold(
        body: Text(state.pathParameters['tid']!),
      ),
    ),
  ],
);
