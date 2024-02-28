// ignore_for_file: depend_on_referenced_packages

import 'package:find_yourself/cubit/discover_page_cubit.dart';
import 'package:find_yourself/cubit/products_page_cubit.dart';
import 'package:find_yourself/view/onboardingView/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context)=> DiscoverPageCubit()),
      BlocProvider(create: (context)=> ProductsPageCubit())
    ]
    , child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness:  Brightness.dark
      ),
      home: const  OnboardingView()
    ));
  }
}
