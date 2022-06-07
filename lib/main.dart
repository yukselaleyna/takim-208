import 'package:fashion/views/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget  {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    return const MaterialApp( 
      home: MainPage(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}