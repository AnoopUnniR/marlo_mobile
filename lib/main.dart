import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marlo_app_mmobile/application/filtered/filter_screen_bloc.dart';
import 'package:marlo_app_mmobile/application/home_page/home_screen_bloc.dart';
import 'package:marlo_app_mmobile/application/transaction/transaction_page_bloc.dart';
import 'package:marlo_app_mmobile/presentation/home_screen/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              HomeScreenBloc()..add(const HomeScreenEvent.started()),
        ),
        BlocProvider(
          create: (context) => TransactionPageBloc(),
        ),
        BlocProvider(create: (context)=> FilterScreenBloc())
      ],
      child:const MaterialApp(
          debugShowCheckedModeBanner: false, home:  HomeScreen()),
    );
  }
}
