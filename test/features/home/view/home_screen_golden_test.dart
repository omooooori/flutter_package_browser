import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_package_browser/features/home/view/home_screen.dart';
import 'package:flutter_package_browser/features/home/contract/home_ui_state.dart';
import 'package:flutter_package_browser/features/home/notifier/home_notifier.dart';
import 'package:flutter_package_browser/features/home/contract/home_action.dart';

class _MockHomeNotifier extends HomeNotifier {
  @override
  HomeUiState build() => const HomeUiState(packages: ['mock_package']);
  @override
  Future<void> send(HomeAction action) async {}
  @override
  Future<void> loadMore() async {}
  @override
  void consumeEffect() {}
}

void main() {
  testWidgets('HomeScreen golden test', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          homeNotifierProvider.overrideWith(() => _MockHomeNotifier()),
        ],
        child: MaterialApp(
          theme: ThemeData(fontFamily: 'Roboto'),
          home: HomeScreen(),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await expectLater(
      find.byType(HomeScreen),
      matchesGoldenFile('goldens/home_screen_golden.png'),
    );
  });
}
