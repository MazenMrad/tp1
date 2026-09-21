// This is a basic Flutter widget test for the waiting room app.
//
// The original counter smoke test was removed together with the counter UI:
// the app now shows a WaitingRoomCard instead (see test/waiting_room_card_test.dart
// for the focused widget test).

import 'package:flutter_test/flutter_test.dart';

import 'package:tp1/main.dart';
import 'package:tp1/waiting_room_card.dart';

void main() {
  testWidgets('Waiting Room app shows the waiting room card',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify the card is rendered with the visitor's name.
    expect(find.byType(WaitingRoomCard), findsOneWidget);
    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('Hello,'), findsOneWidget);
  });
}
