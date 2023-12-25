import 'package:flutter/material.dart';
import 'package:marlo_app_mmobile/core/constants/widgets.dart';
import 'package:marlo_app_mmobile/core/currency/currency_data.dart';

class CountryListWidget extends StatelessWidget {
  const CountryListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: yourCurrencyList.length,
        itemBuilder: (context, index) {
          CurrencyData currencyData = yourCurrencyList[index];
          return MainHeadCurencyWidgets(
              image: currencyData.image,
              amount: currencyData.amount,
              currencyName: currencyData.name);
        },
        separatorBuilder: (context, index) => sbw20,
      ),
    );
  }
}

class MainHeadCurencyWidgets extends StatelessWidget {
  const MainHeadCurencyWidgets({
    super.key,
    required this.image,
    required this.amount,
    required this.currencyName,
  });

  final String image;
  final String amount;
  final String currencyName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 152,
      width: 148,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: Colors.black38,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(image),
                radius: 30,
              ),
              Text(
                "GBP",
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
          sbh20,
          Text(
            amount,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            currencyName,
            style: TextStyle(color: Colors.black54, fontSize: 12),
          )
        ],
      ),
    );
  }
}
