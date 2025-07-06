import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_package_browser/features/home/view/home_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_package_browser/features/home/contract/home_ui_state.dart';
import 'package:flutter_package_browser/features/home/notifier/home_notifier.dart';
import 'package:flutter_package_browser/features/home/contract/home_action.dart';

void main() {
  group('HomeScreen Widget Test', () {
    testWidgets('displays mock data in the list', (WidgetTester tester) async {
      const mockPackageName = 'mock_package';
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            homeNotifierProvider.overrideWith(() => _MockHomeNotifier()),
          ],
          child: const MaterialApp(
            home: HomeScreen(),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('pub.dev'), findsOneWidget);
      expect(find.text(mockPackageName), findsOneWidget);
    });
  });
}

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