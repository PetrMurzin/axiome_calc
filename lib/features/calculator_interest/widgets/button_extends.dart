import 'package:flutter/material.dart';
import 'package:axiome_calc/generated/l10n.dart';
import 'package:axiome_calc/process/process_calculate.dart';


class ButtonExtends extends StatefulWidget {
  final Function()? onPressed;
  const ButtonExtends({
    super.key, required this.onPressed ,
  });

  @override
  State<ButtonExtends> createState() => _ButtonExtendsState();
}

class _ButtonExtendsState extends State<ButtonExtends> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: FilledButton(

        onPressed: widget.onPressed,
        style: FilledButton.styleFrom(
          disabledBackgroundColor: Color(0XFFF3F0F7),
          backgroundColor: Color(0XFF2B2B37),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          S.of(context).Calculate,
          style: ProcessCalculate.isNotNum ? theme.textTheme.headlineSmall : theme.textTheme.headlineMedium,
        ),
      ),
    );
  }
}
