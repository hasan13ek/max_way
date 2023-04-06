import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:max_way/blocs/max_way_bloc.dart';
import 'package:max_way/blocs/max_way_event.dart';
import 'package:max_way/screens/main_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>MaxWayBloc()..add(FetchAllFoods()))
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => const MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Max Way',
              home: MainScreen(),
            ));
  }
}
