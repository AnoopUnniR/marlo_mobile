import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marlo_app_mmobile/application/filtered/filter_screen_bloc.dart';
import 'package:marlo_app_mmobile/application/transaction/transaction_page_bloc.dart';
import 'package:marlo_app_mmobile/core/constants/widgets.dart';
import '../widgets/filter_container_widget.dart';
import 'widgets/amount_choice_widget.dart';
import 'widgets/currencies_choice_widget.dart';
import 'widgets/money_choic_chip_widget.dart';
import 'widgets/status_choice_chips_widget.dart';
import 'widgets/time_range_choice_widget.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.9,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: BlocBuilder<FilterScreenBloc, FilterScreenState>(
            builder: (context, state) {
              return Column(children: [
                sbh30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "Filter",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        BlocProvider.of<FilterScreenBloc>(context).add(
                            const FilterScreenEvent.selected(
                                selectedCurrencies: [],
                                filterStatuses: null,
                                filterMoney: null,
                                filterTimeRanges: null,
                                customDatePicked: null));
                        minimumController.clear();
                        maximumController.clear();
                      },
                      child: const Text("Clear"),
                    )
                  ],
                ),
                sbh30,
                FilterContainerWidget(
                  title: "Money in and out · 2",
                  choiceChipInnerWidget: MoneyChoicChipWidget(state: state),
                ),
                sbh20,
                FilterContainerWidget(
                  title: "Statuses · 3",
                  choiceChipInnerWidget: StatusChoiceChipsWidget(state: state),
                ),
                sbh20,
                FilterContainerWidget(
                  title: "Time range",
                  choiceChipInnerWidget: TimeRangeChoiceWidget(state: state),
                ),
                sbh20,
                FilterContainerWidget(
                    title: "Currencies ",
                    choiceChipInnerWidget:
                        CurrenciesChoiceWidget(state: state)),
                sbh20,
                FilterContainerWidget(
                  title: "Amount",
                  choiceChipInnerWidget: AmountChoiceWidget(state: state),
                ),
                sbh20,
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: customButtonStyle(const Color(0xFFC6EBF6)),
                    child: const Text("Cancel"),
                  ),
                ),
                sbh10,
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (minimumController.text.isNotEmpty &&
                          maximumController.text.isNotEmpty) {
                        double minAmount =
                            double.parse(minimumController.text.trim());
                        double maxAmount =
                            double.parse(maximumController.text.trim());
                        if (minAmount > maxAmount) {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: Text(
                                  "Maximum amount cant be greater than minimum amount")));
                          return;
                        }
                      }
                      BlocProvider.of<TransactionPageBloc>(context).add(
                        TransactionPageEvent.filteredResult(
                            filterMoney: state.filterMoney,
                            filterStatuses: state.filterStatuses,
                            filterTimeRanges: state.filterTimeRanges,
                            coustomPickedDate: state.coustomPickedDate,
                            maximumAmount: maximumController.text.trim(),
                            minimumAmount: minimumController.text.trim(),
                            selectedCurrency: state.selectedCurrencies),
                      );
                      Navigator.pop(context);
                    },
                    style: customButtonStyle(const Color(0xFF0CABDF)),
                    child: const Text("Apply"),
                  ),
                ),
                sbh20
              ]);
            },
          ),
        ),
      ),
    );
  }
}

ButtonStyle customButtonStyle(Color color) {
  return ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(color),
    shape: MaterialStateProperty.all<OutlinedBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
