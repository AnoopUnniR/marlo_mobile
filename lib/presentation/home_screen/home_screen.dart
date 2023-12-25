import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marlo_app_mmobile/application/home_page/home_screen_bloc.dart';
import 'package:marlo_app_mmobile/application/transaction/transaction_page_bloc.dart';
import 'package:marlo_app_mmobile/core/constants/text_styles.dart';
import 'package:marlo_app_mmobile/core/constants/widgets.dart';
import 'package:marlo_app_mmobile/domain/datum_model/datum_model.dart';
import 'package:marlo_app_mmobile/presentation/transaction_page/transaction_page.dart';

import 'widgets/custom_bottom_nav_bar.dart';
import 'widgets/country_list_widget.dart';
import 'widgets/todo_list_section_wigets.dart';
import 'widgets/transation_details_tiles_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CutomBottomNavBar(),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.orange),
            child: const Center(
              child: Text(
                "JB",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        actions: const [
          Icon(
            Icons.add_alert_rounded,
            color: Colors.blue,
          ),
          sbw20
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: BlocBuilder<HomeScreenBloc, HomeScreenState>(
                builder: (context, state) {
                  List<DatumModel> datumList = state.data!;
                  return Column(
                    children: [
                      const CountryListWidget(),
                      sbh20,
                      const TodoListSectionWigets(),
                      sbh20,
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "All transactions",
                                style: homeScreenHeadingStyle,
                              ),
                              TextButton(
                                onPressed: () {
                                  //Initialising the transaction page data before navigating to it
                                  BlocProvider.of<TransactionPageBloc>(context)
                                      .add(TransactionPageEvent.started(
                                          datumList));
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const TransactionPage(),
                                    ),
                                  );
                                },
                                child: const Text("See all"),
                              )
                            ],
                          )
                        ],
                      ),
// All transaction list widget
                      Expanded(
                        flex: 1,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            DatumModel datum = datumList[index];
                            return TransationDetailsTilesWidget(datum: datum);
                          },
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
