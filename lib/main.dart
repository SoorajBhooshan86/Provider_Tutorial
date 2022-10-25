import 'package:flutter/material.dart';
import 'package:provider_demo/view/screen_1.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/controller/user_data_controller.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ProviderController()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Screen1(),
      ),
    );
  }
}
