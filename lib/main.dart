import 'dart:async';
import 'package:flutter/material.dart';

import 'views/homepage.dart';

import 'package:flutter/material.dart';
void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return MaterialApp(
    debugShowCheckedModeBanner: false,
    
  
	title: 'Flutter News App',
    theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),

	home: MyHomePage(),
	
  color:Colors.white,
	);
}
}

class MyHomePage extends StatefulWidget {
@override
_MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
@override
void initState() {
	super.initState();
	Timer(Duration(seconds: 5),
		()=>Navigator.pushReplacement(context,
										MaterialPageRoute(builder:
														(context) =>
														SecondScreen()
														)
									)
		);
}
@override
Widget build(BuildContext context) {
	return SafeArea( child: Container( 
    
          padding: EdgeInsets.all(16),
          
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/splash.png',),
              
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            children:[ Center(
                child: Text(
                  'We show news for you',
                  style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 22.0, decoration: TextDecoration.none,
                  
                  
                  ),
                ),
              ),
              Container(
              margin: const EdgeInsets.fromLTRB(110, 300, 50, 150),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green
                  ),
                  child: Text("Skip"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondScreen()),
                    );
                  },
                ),
              )
            ],
          ),
        ),
  );
}
}
class SecondScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return MaterialApp(
    debugShowCheckedModeBanner: false,

    initialRoute: '/',
    routes: {

      '/': (context) => HomePage(),

    },

  );
}
}
