import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
class NewProjectPage extends StatefulWidget{
  @override
  State<MyApp> createState() => NewProjectPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            MaterialButton(
              child: Text("Go Back!"),
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Builder(
        builder: (context) => Scaffold(
      backgroundColor: Color(0xFF323031),
    appBar: AppBar(
      backgroundColor: Color(0xFF084C61),
      title: Text("Project Planner"),
    ),
    body: Center(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewProjectPage()),
            );
          }, child: Text("New Project"),

          style: ElevatedButton.styleFrom(
            primary: Color(0xFF084C61),
            padding:  EdgeInsets.symmetric(horizontal: 40, vertical: 36),
              textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),


          ),
          SizedBox(
            height: 50, //<-- SEE HERE
          ),

          ElevatedButton(onPressed: (){}, child: Text("Old Projects"),
            style: ElevatedButton.styleFrom(
                primary: Color(0xFF084C61),
                padding:  EdgeInsets.symmetric(horizontal: 40, vertical: 35),
                textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),


          ),

        ]),

    ),
    ),
    )
    );
  }
}