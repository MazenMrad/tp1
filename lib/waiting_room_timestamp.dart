import 'package:flutter/material.dart';

/// Displays a small timestamp under the visitor's name in the waiting room.
///
/// The widget is stateless on purpose: it renders the moment the card is built.
/// If your course handout (the Annexe) provides a different implementation of
/// this widget, you can safely replace the body of [build] with it - the only
/// requirement is that the class stays a `const`-constructible widget with no
/// required arguments, because it is used as `const WaitingRoomTimestamp()`.
class WaitingRoomTimestamp extends StatelessWidget {
  const WaitingRoomTimestamp({super.key});

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();

    return Text(
      'Checked in at ${_formatTime(now)}',
      style: Theme.of(context).textTheme.bodySmall,
    );
  }

  /// Formats a [DateTime] as a zero-padded 24-hour clock value (e.g. `09:05:42`).
  static String _formatTime(DateTime time) {
    final String hour = time.hour.toString().padLeft(2, '0');
    final String minute = time.minute.toString().padLeft(2, '0');
    final String second = time.second.toString().padLeft(2, '0');

    return '$hour:$minute:$second';
  }
}
