import 'package:flutter_test/flutter_test.dart';
import 'package:tp1/waiting_room_card.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('WaitingRoomCard displays the name correctly',
      (WidgetTester tester) async {
    // Build our widget.
    await tester.pumpWidget(
      const MaterialApp(
        home: WaitingRoomCard(name: 'Alice'),
      ),
    );

    // Verify that the widget renders the correct name.
    expect(find.text('Hello,'), findsOneWidget);
    expect(find.text('Alice'), findsOneWidget);
  });
}
