import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pizza/app.dart';
import 'package:user_repository/user_repository.dart';

import 'simple_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // ensure that the app is initialized before running the app.
  await Firebase.initializeApp(); // initialize the Firebase app.
  Bloc.observer = SimpleBlocObserver(); // observe the BLoC events.

  runApp(MyApp(FirebaseUserRepo()));
}
