import 'package:flutter/material.dart';
import '../screens/filters.dart';
import '../screens/meal_detail.dart';
import '../screens/tabs_screen.dart';
import './screens/category_meals.dart';
import './screens/categories.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'recipe_app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Montserrat',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyLarge: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyMedium: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            titleLarge: TextStyle(
              fontSize: 20,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
            )),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
            .copyWith(secondary: Colors.amber),
      ),
      // home: HomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => TabsScreen(),
        CategoryMeal.routeName: (context) => CategoryMeal(),
        MealDetail.routeName: (context) => MealDetail(),
        FilterScreen.routeName: (context) => FilterScreen(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DailyMeals'),
      ),
      body: CategoriesScreen(),
    );
  }
}
