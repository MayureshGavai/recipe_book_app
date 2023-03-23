// import 'package:flutter/material.dart';
// import '../screens/favourites.dart';
// import '../screens/categories.dart';

// class TabsScreen extends StatefulWidget {
//   @override
//   _TabsScreenState createState() => _TabsScreenState();
// }

// class _TabsScreenState extends State<TabsScreen> {
//   final List<Map<String, Object>> _pages = [
//     {
//       'page': CategoriesScreen(),
//       'title': 'Categories',
//     },
//     {
//       'page': FavouritesScreen(),
//       'title': 'Your Favorite',
//     },
//   ];
//   int _selectedPageIndex = 0;

//   void _selectPage(int index) {
//     setState(() {
//       _selectedPageIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(_pages[_selectedPageIndex]['title']),
//       ),
//       body: _pages[_selectedPageIndex]['page'],
//           bottomNavigationBar: BottomNavigationBar(
//             onTap: _selectPage,
//             backgroundColor: Colors.pink,
//             unselectedItemColor: Colors.white,
//             selectedItemColor: Colors.amber,
//             currentIndex: _selectedPageIndex,
//             items: [
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.category), label: 'Category'),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.star), label: 'Favourite'),
//             ],
//           ),
//         );
//   }
// }

import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

import './favourites.dart';
import './categories.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, dynamic>> _pages = [
    {
      'page': CategoriesScreen(),
      'title': 'Categories',
    },
    {
      'page': FavouritesScreen(),
      'title': 'Your Favorite',
    },
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Colors.pink,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.amber,
        currentIndex: _selectedPageIndex,
        // type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
