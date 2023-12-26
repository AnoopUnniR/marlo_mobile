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
              currencyData: currencyData,);
        },
        separatorBuilder: (context, index) => sbw20,
      ),
    );
  }
}

class MainHeadCurencyWidgets extends StatelessWidget {
  const MainHeadCurencyWidgets({
    super.key,
    required this.currencyData,
  });
  final CurrencyData currencyData;
 

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
                backgroundImage: AssetImage(currencyData.image),
                radius: 30,
              ),
               Text(
                currencyData.code,
                style:const TextStyle(fontSize: 10),
              )
            ],
          ),
          sbh20,
          Text(
            currencyData.amount,
            style:const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            currencyData.name,
            style:const TextStyle(color: Colors.black54, fontSize: 12),
          )
        ],
      ),
    );
  }
}
