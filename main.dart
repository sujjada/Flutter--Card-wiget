import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card/ui_all/textstyle.dart';
import 'package:flutter/src/material/colors.dart';

void main(){
  runApp(MyApp());

}

class MyApp  extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          displayLarge: TextStyle(color: Colors.blue),
        ),
        primarySwatch: Colors.blue,
      ),
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    var arrNames=['Papa','mama','arnob','aronno','data'];
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Card',style:h1TextStyle() ,)),
      body: ListView.separated(itemBuilder: (context, index) {

        return Container(
          child: Column(
            children: [
              Card(
                color: Colors.white60,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text(arrNames[index],style: h1TextStyle(),),
                  trailing: Icon(Icons.add),

                ),
              ),
            ],
          ),
        );
      }, separatorBuilder: (context, index) {
        return Divider(
          height: 10,
            thickness: 1,
        );
      }, itemCount: arrNames.length),
    );
  }
}