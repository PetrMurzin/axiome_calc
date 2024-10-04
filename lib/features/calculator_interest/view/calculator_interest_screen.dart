import 'package:flutter/material.dart';
import 'package:axiome_calc/generated/l10n.dart';
import 'package:axiome_calc/process/process_calculate.dart';

import '../widgets/widgets.dart';

class CalculatorInterestScreen extends StatefulWidget {
  const CalculatorInterestScreen({super.key});

  @override
  State<CalculatorInterestScreen> createState() =>
      _CalculatorInterestScreenState();
}

class _CalculatorInterestScreenState extends State<CalculatorInterestScreen> {
  bool isPrimary = true;

  void isNotNum(value) {
    setState(() {});
    if (double.tryParse(value) != null) {
      ProcessCalculate.isNotNum = false;
    } else {
      ProcessCalculate.isNotNum = true;
    }
  }


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        title: SafeArea(
            child: Center(
              child: Text(
                S.of(context).calculatorInterestCompound,
                style: theme.textTheme.titleLarge,
              ),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Center(
                  child: SegmentedButtonExample(isSelected: isPrimary,
                    onPressed: (value) {
                      setState(() {
                        isPrimary = value;
                      });
                    },),
                ),
                InputValue(
                  topText: S.of(context).initialInvestment,
                  labelText: '0.00',
                  suffixText: 'AXM  ',
                  onChanged: (value) {
                    value = value.replaceAll(',', '.');
                    isNotNum(value);
                    ProcessCalculate.balance = double.tryParse(value) ?? 0;
                  },
                ),
                InputValue(
                  topText: S.of(context).interestRate,
                  labelText: '20',
                  suffixText: '%   ',
                  onChanged: (value) {
                    value = value.replaceAll(',', '.');
                    isNotNum(value);
                    ProcessCalculate.bet = double.tryParse(value) ?? 20;
                  },
                ),
                InputValue(
                  topText: S.of(context).commissionDelegation,
                  labelText: '0.926',
                  suffixText: 'AXM  ',
                  onChanged: (value) {
                    value = value.replaceAll(',', '.');
                    isNotNum(value);
                    ProcessCalculate.feeDelegate =
                        double.tryParse(value) ?? 0.926;
                  },
                ),
                InputValue(
                  topText: S.of(context).commissionAwards,
                  labelText: '0.321',
                  suffixText: 'AXM  ',
                  onChanged: (value) {
                    value = value.replaceAll(',', '.');
                    isNotNum(value);
                    ProcessCalculate.feeReward =
                        double.tryParse(value) ?? 0.321;
                  },
                ),
                isPrimary ? PeriodSelectedForm() : SizedBox(),
                const Expanded(child: SizedBox(height: 20)),
                ButtonExtends(
                    onPressed: ProcessCalculate.isNotNum ? null : () {
                      isPrimary ? ProcessCalculate.calculateInterestPrimary() : ProcessCalculate.calculateInterestEnhanced();
                      Navigator.pushNamed(
                        context,
                        '/delegate',
                      );
                    }
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
