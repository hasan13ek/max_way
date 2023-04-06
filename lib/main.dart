import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_way/app/app.dart';
import 'package:max_way/app/bloc_observer.dart';
import 'package:max_way/data/service/get_it.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  Bloc.observer = AppBlocObserver();
  runApp(const App());
}


