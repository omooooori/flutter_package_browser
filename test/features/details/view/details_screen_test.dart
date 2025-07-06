import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_package_browser/features/details/view/details_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_package_browser/features/details/contract/package_details_ui_state.dart';
import 'package:flutter_package_browser/features/details/notifier/package_details_notifier.dart';
import 'package:flutter_package_browser/features/details/contract/package_details_action.dart';

void main() {
  group('DetailsScreen Widget Test', () {
    testWidgets('displays test data', (WidgetTester tester) async {
      const testDescription = 'This is a test description.';
      const testPublisher = 'test_publisher';
      const testVersion = '1.2.3';
      const testPackage = 'test_package';
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            packageDetailsNotifierProvider.overrideWith(
              () => _MockDetailsNotifier(),
            ),
          ],
          child: const MaterialApp(
            home: DetailsScreen(packageName: testPackage),
          ),
        ),
      );
      await tester.pump();
      expect(find.text(testDescription), findsOneWidget);
      expect(find.text(testPublisher), findsOneWidget);
      expect(find.text(testVersion), findsOneWidget);
    });
  });
}

class _MockDetailsNotifier extends PackageDetailsNotifier {
  _MockDetailsNotifier();
  @override
  PackageDetailsUiState build(String packageName) =>
      const PackageDetailsUiState(
        description: 'This is a test description.',
        publisherId: 'test_publisher',
        versions: ['1.2.3'],
      );
  @override
  Future<void> send(PackageDetailsAction action) async {}
  @override
  void consumeEffect() {}
}
