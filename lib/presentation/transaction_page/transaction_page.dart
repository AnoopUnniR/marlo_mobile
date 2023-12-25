import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marlo_app_mmobile/application/transaction/transaction_page_bloc.dart';
import 'package:marlo_app_mmobile/core/constants/widgets.dart';
import 'package:marlo_app_mmobile/domain/datum_model/datum_model.dart';

import '../home_screen/widgets/transation_details_tiles_widget.dart';
import 'widgets/search_box_widget.dart';
import 'widgets/selected_fileters_widget.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});
  @override
  Widget build(BuildContext context) {
    bool isFirstTime = false;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: const [Icon(Icons.download), sbw20],
      ),
      body: BlocBuilder<TransactionPageBloc, TransactionPageState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Transactions",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                sbh20,
                SearchBoxWidget(
                  isFirstTime: isFirstTime,
                  state: state,
                ),
                sbh20,
//shows the selected filter values
                SelectedFiletersWidget(
                  state: state,
                ),
                Expanded(
                  //loader to be shown if the page is loading
                  child: state.isLoading
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      //if no tractions are available an empty screen will be shown
                      : state.data.isEmpty
                          ? Center(
                              child: Column(
                                children: [
                                  sbh20,
                                  Container(
                                    height: 150,
                                    width: 150,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/search.png"),
                                      ),
                                    ),
                                  ),
                                  const Text("No Data Available")
                                ],
                              ),
                            )
                          :
                          // Transaction lists widgets
                          ListView.builder(
                              itemCount: state.data.length,
                              itemBuilder: (context, index) {
                                DatumModel datum = state.data[index];
                                return TransationDetailsTilesWidget(
                                  datum: datum,
                                );
                              },
                            ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
