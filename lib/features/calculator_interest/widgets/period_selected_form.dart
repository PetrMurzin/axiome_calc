import 'package:flutter/material.dart';
import 'package:axiome_calc/generated/l10n.dart';
import 'package:axiome_calc/process/process_calculate.dart';

class PeriodSelectedForm extends StatefulWidget {
  const PeriodSelectedForm({
    super.key,
  });

  @override
  State<PeriodSelectedForm> createState() => _PeriodSelectedFormState();
}

class _PeriodSelectedFormState extends State<PeriodSelectedForm> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).reinvestmentPeriod,
          style: theme.textTheme.bodyMedium,
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: double.infinity,
          height: 45,
          child: FormField<String>(
            builder: (FormFieldState<String> state) {
              return InputDecorator(
                decoration: InputDecoration(
                  filled: true,
                  suffix: Text(S.of(context).days),
                  suffixStyle: theme.textTheme.bodySmall,
                  fillColor: const Color(0XFFF3F0F7),
                  // contentPadding: ,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: ProcessCalculate.periodsSelectedValue,
                    onChanged: (newValue) {
                      setState(() {
                        ProcessCalculate.periodsSelectedValue = newValue!;
                        state.didChange(newValue);
                      });
                    },
                    items: ProcessCalculate.periods.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: theme.textTheme.bodyMedium,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
