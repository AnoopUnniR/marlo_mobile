class CurrencyData {
  final String code;
  final String name;
  final String image;
  final String amount;

  CurrencyData(
      {required this.code,
      required this.name,
      required this.image,
      required this.amount});
}

List<CurrencyData> yourCurrencyList = [
  CurrencyData(
      code: 'USD',
      name: 'US Dollars',
      image: 'assets/Ellipse 10.png',
      amount: "5,343,242.00"),
  CurrencyData(
      code: 'CAD',
      name: 'Canadian Dollar',
      image: 'assets/Ellipse 9.png',
      amount: "15,343,242.00"),
  CurrencyData(
      code: 'GBP',
      name: 'British Pound',
      image: 'assets/Ellipse 1.png',
      amount: "10,343,242.00"),
];
