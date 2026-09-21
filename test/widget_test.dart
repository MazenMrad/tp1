import 'package:flutter_test/flutter_test.dart';

import 'package:tp1/main.dart';
import 'package:tp1/waiting_room_card.dart';

void main() {
  testWidgets('Waiting Room app shows the waiting room card',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(WaitingRoomCard), findsOneWidget);
    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('Hello,'), findsOneWidget);
  });
}
