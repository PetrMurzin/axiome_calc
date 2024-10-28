import 'package:flutter/material.dart';
import 'package:axiome_calc/generated/l10n.dart';
import 'package:axiome_calc/process/process_calculate.dart';

class DelegateCountingScreen extends StatefulWidget {
  const DelegateCountingScreen({super.key});

  @override
  State<DelegateCountingScreen> createState() => _DelegateCountingScreenState();
}

class _DelegateCountingScreenState extends State<DelegateCountingScreen> {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0,
        title: Text(
          S.of(context).results,
          style: theme.textTheme.titleLarge,
        ),
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Text(
                  S.of(context).delegatedMonth,
                  style: theme.textTheme.headlineLarge,
                ),
                Expanded(
                  child: ListView.separated(
                      separatorBuilder: (context, index) => const Divider(
                            color: Colors.white,
                            height: 8,
                          ),
                      padding: const EdgeInsets.only(top: 8),
                      itemCount: 12,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.05,
                          decoration: const BoxDecoration(
                            color: Color(0XFFF3F0F7),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${S.of(context).month} ${index + 1}',
                                    style: theme.textTheme.bodyMedium),
                                Text(
                                    delegateMap['periods'].isNotEmpty
                                        ? '${S.of(context).periods} ${delegateMap['periods'][index]}'
                                        : '',
                                    style: theme.textTheme.bodyMedium),
                                // const Expanded(child: SizedBox()),
                                Text(delegateMap['delegations'][index],
                                    style: theme.textTheme.bodyMedium),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
