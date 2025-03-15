import 'package:flutter/material.dart';
import 'package:tutorial_3_1/tutorial_11-2.dart';
import 'main.dart';

void main(){
  runApp(const MyApp11_1());
}

class MyApp11_1 extends StatelessWidget{
  const MyApp11_1({Key? key}) : super(key: key);

  Widget build(BuildContext context){
    return MaterialApp(
      title: 'ABP Minggu 11',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'ABP Minggu 11'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget{
  MyHomePage ({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  int selected = 0;
  PageController pc = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: PageView(
          controller: pc,
          onPageChanged: (index){
            setState(() {
              selected = index;
            });
          },
          children: [
            Center(
              child: InkWell(
                child: Text('Go to Home Page', style: TextStyle(fontSize: 30)),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const MyApp()
                    ));
                },
              )
            ),
            MyApp11_2(),
            Center(
              child: Text('Profile Page', style: TextStyle(fontSize: 30)),
            ),
            
            Center(
              child: Text('Email Page', style: TextStyle(fontSize: 30)),
            ),
          ],
        ), 
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.white,
          currentIndex: selected,
          onTap: (index){
            setState(() {
              selected = index;
            });
            pc.animateToPage(
              index,
              duration: Duration(milliseconds: 200),
              curve: Curves.linear,
            );
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.email),
              label: 'Email',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          )
    );
  }
}