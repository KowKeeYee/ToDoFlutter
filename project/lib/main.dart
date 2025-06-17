import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';
import 'package:project/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive
  await Hive.initFlutter();

  // Register adapters here if needed
  // Hive.registerAdapter(YourModelAdapter());

  // Open your box
  await Hive.openBox('mybox'); // <-- Replace with actual box name

  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}