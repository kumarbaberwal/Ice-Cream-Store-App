import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icecreamlovers/apps/my_app.dart';
import 'package:icecreamlovers/models/app_state_model.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppStateModel()..loadProducts(),
      child: const MyApp(),
    ),
  );
}
