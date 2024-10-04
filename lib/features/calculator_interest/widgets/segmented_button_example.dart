import 'package:flutter/material.dart';
import 'package:axiome_calc/generated/l10n.dart';

class SegmentedButtonExample extends StatelessWidget {
  const SegmentedButtonExample({
    super.key,
    required this.isSelected,
    required this.onPressed,
  });

  final bool isSelected;
  final ValueChanged<bool> onPressed;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<bool>(
      style: SegmentedButton.styleFrom(
        backgroundColor: const Color(0XFFF3F0F7),
        foregroundColor: Colors.black38,
        selectedForegroundColor: Colors.white,
        selectedBackgroundColor: const Color(0XFF2B2B37),

      ),
      segments: [
        ButtonSegment(
          value: true,
          label: Text(S.of(context).primary),
        ),
        ButtonSegment(
          value: false,
          label: Text(S.of(context).enhanced),
        ),
      ],
      showSelectedIcon: false,
      selected: {isSelected},
      onSelectionChanged: (value) {
        onPressed(value.first);
      },
    );
  }
}

