import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel_ui_task5/Screens/home_page.dart';

void main() {
  {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark));
  }
  WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter binding is initialized
  runApp(MyApp()); 

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home:HomePage(),
    );
  }
}

