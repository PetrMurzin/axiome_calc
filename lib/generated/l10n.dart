// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Compound Interest Calculator`
  String get calculatorInterestCompound {
    return Intl.message(
      'Compound Interest Calculator',
      name: 'calculatorInterestCompound',
      desc: '',
      args: [],
    );
  }

  /// `Initial balance`
  String get initialInvestment {
    return Intl.message(
      'Initial balance',
      name: 'initialInvestment',
      desc: '',
      args: [],
    );
  }

  /// `Interest rate`
  String get interestRate {
    return Intl.message(
      'Interest rate',
      name: 'interestRate',
      desc: '',
      args: [],
    );
  }

  /// `Commission delegation`
  String get commissionDelegation {
    return Intl.message(
      'Commission delegation',
      name: 'commissionDelegation',
      desc: '',
      args: [],
    );
  }

  /// `Commission awards`
  String get commissionAwards {
    return Intl.message(
      'Commission awards',
      name: 'commissionAwards',
      desc: '',
      args: [],
    );
  }

  /// `Calculate`
  String get Calculate {
    return Intl.message(
      'Calculate',
      name: 'Calculate',
      desc: '',
      args: [],
    );
  }

  /// `Reinvestment period`
  String get reinvestmentPeriod {
    return Intl.message(
      'Reinvestment period',
      name: 'reinvestmentPeriod',
      desc: '',
      args: [],
    );
  }

  /// `Primary`
  String get primary {
    return Intl.message(
      'Primary',
      name: 'primary',
      desc: '',
      args: [],
    );
  }

  /// `Enhanced`
  String get enhanced {
    return Intl.message(
      'Enhanced',
      name: 'enhanced',
      desc: '',
      args: [],
    );
  }

  /// `Days`
  String get days {
    return Intl.message(
      'Days',
      name: 'days',
      desc: '',
      args: [],
    );
  }

  /// `Results`
  String get results {
    return Intl.message(
      'Results',
      name: 'results',
      desc: '',
      args: [],
    );
  }

  /// `Delegated by month`
  String get delegatedMonth {
    return Intl.message(
      'Delegated by month',
      name: 'delegatedMonth',
      desc: '',
      args: [],
    );
  }

  /// `Month`
  String get month {
    return Intl.message(
      'Month',
      name: 'month',
      desc: '',
      args: [],
    );
  }

  /// `Period`
  String get periods {
    return Intl.message(
      'Period',
      name: 'periods',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
