import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marlo_app_mmobile/application/transaction/transaction_page_bloc.dart';
import 'package:marlo_app_mmobile/core/constants/widgets.dart';
import 'package:marlo_app_mmobile/core/debouncer/debouncer.dart';
import 'package:marlo_app_mmobile/presentation/transaction_page/bottom_sheet/bottom_sheet_content.dart';

class SearchBoxWidget extends StatelessWidget {
  const SearchBoxWidget(
      {super.key, required this.isFirstTime, required this.state});
  final TransactionPageState state;
  final bool isFirstTime;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 40,
            child: TextField(
              onTap: () {
                if (!isFirstTime) {
                  BlocProvider.of<TransactionPageBloc>(context).add(
                    Search(
                      data: state.data,
                      searchQuery: "",
                    ),
                  );
                }
              },
              onChanged: (value) {
                Debouncer().run(() {
                  BlocProvider.of<TransactionPageBloc>(context).add(
                    Search(
                      data: state.filteredList,
                      searchQuery: value,
                    ),
                  );
                });
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                suffixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 16.0),
                hintText: 'Search vessel',
              ),
            ),
          ),
        ),
        sbw10,
        InkWell(
          onTap: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => const BottomSheetContent(),
            );
          },
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: const Icon(Icons.filter_alt),
          ),
        ),
        sbw10
      ],
    );
  }
}
