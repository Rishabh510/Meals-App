import 'package:flutter/material.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/categories_screen.dart';
import 'screens/tabs_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'screens/filters_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.amberAccent,
        canvasColor: Color.fromRGBO(225, 224, 221, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontSize: 24,
                fontFamily: 'RobotoConsensed',
              ),
              body1: TextStyle(
                color: Color.fromRGBO(24, 42, 51, 1),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(24, 42, 51, 1),
              ),
            ),
      ),
      home: TabsScreen(),
      //can be brought to routes by using '/'
      initialRoute: '/',
      // '/' is default
      routes: {
        CategoriesMealsScreen.routeName: (ctx) => CategoriesMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(),
      },
      /*onGenerateRoute: (settings) {
        print(settings.arguments);
        return MaterialPageRoute(
          builder: (ctx) => CategoriesScreen(),
        );
      },*/
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => CategoriesScreen(),
        );
      },
    );
  }
}

//class MyHomePage extends StatefulWidget {
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Meals'),
//      ),
//      body: Center(
//        child: Text('BALBAL'),
//      ),
//    );
//  }
//}
