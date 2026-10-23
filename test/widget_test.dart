import 'package:flutter_test/flutter_test.dart';
import 'package:syncclip/main.dart';

void main() {
  testWidgets('SyncClip home screen loads', (WidgetTester tester) async {
    await tester.pumpWidget(const SyncClipApp());

    expect(find.text('SyncClip'), findsWidgets);
    expect(find.text('Send'), findsOneWidget);
    expect(find.text('Join Room'), findsOneWidget);
    expect(find.text('Create Custom Room'), findsOneWidget);
  });
}
