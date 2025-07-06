import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_package_browser/features/details/view/details_screen.dart';
import 'package:flutter_package_browser/features/details/contract/package_details_ui_state.dart';
import 'package:flutter_package_browser/features/details/notifier/package_details_notifier.dart';
import 'package:flutter_package_browser/features/details/contract/package_details_action.dart';

class _MockDetailsNotifier extends PackageDetailsNotifier {
  _MockDetailsNotifier();
  @override
  PackageDetailsUiState build(String packageName) => const PackageDetailsUiState(
    description: 'This is a test description.',
    publisherId: 'test_publisher',
    versions: ['1.2.3'],
  );
  @override
  Future<void> send(PackageDetailsAction action) async {}
  @override
  void consumeEffect() {}
}

void main() {
  testWidgets('DetailsScreen golden test', (WidgetTester tester) async {
    const testPackage = 'test_package';
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          packageDetailsNotifierProvider.overrideWith(() => _MockDetailsNotifier()),
        ],
        child: MaterialApp(
          theme: ThemeData(fontFamily: 'Roboto'),
          home: DetailsScreen(packageName: testPackage),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await expectLater(
      find.byType(DetailsScreen),
      matchesGoldenFile('goldens/details_screen_golden.png'),
    );
  });
} 