import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marlo_app_mmobile/application/filtered/filter_screen_bloc.dart';
import 'package:marlo_app_mmobile/core/currency/currency_data.dart';

class CurrenciesChoiceWidget extends StatelessWidget {
  const CurrenciesChoiceWidget({
    required this.state,
    super.key,
  });
  final FilterScreenState state;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: yourCurrencyList.length,
      itemBuilder: (context, index) {
        var currency = yourCurrencyList[index];
        return ListTile(
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Checkbox(
                value: state.selectedCurrencies.contains(currency.code),
                onChanged: (bool? value) {
                  List<String> tempList = [...state.selectedCurrencies];
                  if (value != null) {
                    if (value) {
                      tempList.add(currency.code);
                      BlocProvider.of<FilterScreenBloc>(context).add(
                          FilterScreenEvent.selected(
                              filterMoney: state.filterMoney,
                              filterStatuses: state.filterStatuses,
                              filterTimeRanges: state.filterTimeRanges,
                              selectedCurrencies: tempList));
                    } else {
                      tempList.remove(currency.code);
                      BlocProvider.of<FilterScreenBloc>(context).add(
                        FilterScreenEvent.selected(
                          filterMoney: state.filterMoney,
                          filterStatuses: state.filterStatuses,
                          filterTimeRanges: state.filterTimeRanges,
                          selectedCurrencies: tempList,
                        ),
                      );
                    }
                  }
                },
              ),
               CircleAvatar(
                backgroundImage: AssetImage(currency.image),
              ),
            ],
          ),
          title: Text(
            currency.code,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            currency.name,
            style: const TextStyle(color: Colors.black54, fontSize: 10),
          ),
        );
      },
    );
  }
}
