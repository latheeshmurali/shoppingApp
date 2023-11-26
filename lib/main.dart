import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/home_page.dart';
import 'package:shopapp/providers/cart_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'shop app Demo',
        theme: ThemeData(
          fontFamily: 'JustSans',
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.black, primary: Colors.tealAccent),
          inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(225, 225, 225, 1)),
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(30),
                right: Radius.circular(30),
              ),
            ),
          ),
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
            titleMedium: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            titleSmall: TextStyle(
              fontFamily: 'JustSans',
              fontSize: 20,
            ),
            bodySmall: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            )
          ),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            foregroundColor: Colors.black,
          ),
          useMaterial3: true
        ),
        home: const HomePage()
      ),
    );
  }
}
