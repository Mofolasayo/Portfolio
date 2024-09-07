import 'package:flutter/material.dart';
import 'package:mofolasayo/pages/home_page.dart';
import 'package:mofolasayo/utils/colors.dart';
import 'package:mofolasayo/utils/my_textstyle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 129, 156, 245)),
          useMaterial3: true,

          scaffoldBackgroundColor: MyColors.grey1000,
          textTheme: TextTheme(
              bodyMedium:
                  MyTextStyle.regular(fontSize: 16, color: MyColors.grey600)),
          appBarTheme: AppBarTheme(
            
            backgroundColor: MyColors.grey1000,
            centerTitle: true,
            foregroundColor: MyColors.grey500),
      ),
              
      home: const HomePage(),
    );
  }
}
