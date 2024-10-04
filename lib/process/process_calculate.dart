List<String> delegations = [];
Map delegateMap = <String, List<String>>{
  'delegations': [],
  'periods': [],
};

abstract class ProcessCalculate {
  static bool isPrimary = true;
  static bool isNotNum = true;
  static double balance = 0;
  static double bet = 20;
  static double feeDelegate = 0.99;
  static double feeReward = 0.3;
  static String periodsSelectedValue = '1';
  static List<String> periods = ['1', '2', '3', '5', '6', '15', '30'];
  static List<int> periodsInt = periods.map(int.parse).toList();

  static void calculateInterestPrimary() {
    delegateMap['delegations'].clear();
    delegateMap['periods'].clear();
    delegations.clear();
    int periodInt = int.parse(ProcessCalculate.periodsSelectedValue);
    double delegate = 0;
    double delegateNew = 0;
    double balanceNew = balance;
    double fee = feeReward + feeDelegate;
    double period = 360 / periodInt;
    double crat = 360 / periodInt / 12;

    for (int i = 0; i < period; i++) {
      if (balanceNew > fee) {
        delegate = (balanceNew - fee) * 0.85;
        balanceNew = 0;
      }
      balanceNew = delegate * bet / 100 / 30 * periodInt + balanceNew;
      if (balanceNew > fee) {
        delegateNew = (balanceNew - fee) * 0.85;
        balanceNew = 0;
      }
      delegate = delegateNew + delegate;
      delegateNew = 0;
      if ((i + 1) % crat == 0) {
        delegations.add(delegate.toStringAsFixed(2));
      }
    }
    delegateMap['delegations'] = [...delegations];
  }

  static void calculateInterestEnhanced() {
    delegateMap['delegations'].clear();
    delegateMap['periods'].clear();
    delegations.clear();
    double delegateNew = 0;
    double balanceNew = 0;
    double fee = feeReward + feeDelegate;
    double delegate = (balance - fee) * 0.85;

    for (int i = 0; i <= 12; i++) {
      delegations.add('0');
      delegateMap['periods'].add('0');
      delegateMap['delegations'].add(delegate.toStringAsFixed(2));
      for (var el in periodsInt) {
        delegate = double.parse(delegateMap['delegations'].last);
        for (int i = 0; i < 360 / el / 12; i++) {
          balanceNew = delegate * bet / 100 / 30 * el + balanceNew;
          if (balanceNew > fee) {
            delegateNew = (balanceNew - fee) * 0.85;
            balanceNew = 0;
          }
          delegate = delegateNew + delegate;
          delegateNew = 0;
          if ((i + 1) % (360 / el / 12) == 0) {
            if (delegate > double.parse(delegations.last)) {
              delegations.removeLast();
              delegations.add(delegate.toStringAsFixed(2));
              delegateMap['periods'].removeLast();
              delegateMap['periods'].add(el.toString());
            }
          }
        }
      }
      delegateMap['delegations'].removeLast();
      delegateMap['delegations'].add(delegations.last);
      delegate = double.parse(delegations.last);
    }
  }
}
