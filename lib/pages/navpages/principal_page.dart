import 'package:flutter/material.dart';
import 'package:travel_app/pages/homepage.dart';
import 'bar_item_page.dart';
import 'my_page.dart';
import 'search_page.dart';
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
 List pages =[
   Homepage(),
   BarItemPage(),
   SearchPage(),
   MyPage(),
 ];
 int currentIndex= 0;
 void _onTap(int index){
  setState(() {
    currentIndex = index;
  });
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        onTap: _onTap,
        currentIndex: currentIndex ,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.apps,
                size: 30,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_sharp,
              size: 30,),
            label: 'Bar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,
            size: 30,),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,
              size: 30,),
            label: 'My Profil',
          )
        ],
      ),
    );
  }
}


