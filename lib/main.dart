import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/boolModal.dart';
import 'package:whatsapp/system_mode.dart';

import 'ios_bottomNevigetion.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => bool_Modal(),
          )
        ],
            child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final valuee=Provider.of<bool_Modal>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: valuee.abc?TabBarDemo():ChatItam(),
    );
  }
}