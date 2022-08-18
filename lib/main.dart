import 'package:flutter/material.dart';
import 'package:ghana_meals/screens/categories_screen.dart';
import 'package:ghana_meals/screens/category_meal_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ghana Meals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(
            color: Color.fromARGB(20, 50, 51, 1),
          ),
          bodyText2: TextStyle(
            color: Color.fromARGB(20, 50, 51, 1),
          ),
          subtitle1: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      // home:  Categories(),
      initialRoute: '/',
      routes: {
        '/': (context) =>Categories(),
        CategoryMealScreen.routeName: (context) => CategoryMealScreen(),
      },
    );
  }
}

