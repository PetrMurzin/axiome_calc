import 'package:flutter/material.dart';

class InputValue extends StatelessWidget {
  final String labelText;
  final String suffixText;
  final String topText;
  final Function(String) onChanged;

  const InputValue({
    super.key,
    required this.topText,
    required this.labelText,
    required this.suffixText,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          topText,
          style: theme.textTheme.bodyMedium,
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.05,
          child: TextField(
            onChanged: onChanged,
            style: theme.textTheme.bodyMedium,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              filled: true,
              fillColor: const Color(0XFFF3F0F7),
              // contentPadding: ,
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              label: Text(labelText),
              labelStyle: theme.textTheme.bodyMedium,
              suffixIcon: Text(suffixText, style: theme.textTheme.bodySmall),
              suffixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
            ),
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
