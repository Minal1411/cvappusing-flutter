import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "My CV App",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: Text("My CV App"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
               child:Padding(
                 
               padding: const EdgeInsets.symmetric(
                   vertical: 30.0,
                   horizontal: 30.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 60.0,
                      backgroundImage: AssetImage("assets/minal.jpg"),
                    ),
                  SizedBox(
                    height: 10.0,

                  ),
                    Text("Min Chhetri",style: TextStyle(
                      fontSize: 20.0,
                    ),
                    ),
                 SizedBox(
                   height: 3.0,),
                    Text("App developer",style: TextStyle(
                      color: Colors.grey,fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),),
                    SizedBox(
                      height: 7.0,

                    ),
                    Text("Hello, I am Min Chhetri.I am a app developer."
                        "I am currently work at Helpinc pvt.ltd",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: "NotoSerif",
                    ),)
                  ],
                ),
      ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left:10.0,
                top: 10.0,),
             child: Text("Social Links",style: TextStyle(
                fontSize: 20.0,
              ),),
              ),
              Card(
                elevation: 2.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      onPressed: (){},
                      color: Colors.blue,
                      icon: Icon(
                        FontAwesomeIcons.facebook
                      ),
                    ),
                    IconButton(
                      onPressed: (){},
                      color: Colors.blue,
                      icon: Icon(FontAwesomeIcons.twitter
                      ),
                    ),
                    IconButton(
                      onPressed: (){},
                      color: Colors.orange,
                      icon: Icon(
                          FontAwesomeIcons.instagram
                      ),
                    ),
                    IconButton(
                      onPressed: (){},
                      color: Colors.green ,
                      icon: Icon(
                          FontAwesomeIcons.linkedin
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left:10.0,
                  top: 10.0,),
                child: Text("Skills",
                  style: TextStyle(
                  fontSize: 20.0,
                ),
                ),
              ),
              Card(
                elevation: 2.0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage("https://www.biskoon.com/media/com_jomclassifieds/items/1089/weebbb.png"),
                  ),
                  title: Text("Web Development"),
                  subtitle: Text("HTML,CSS,JavaScript"),
                ),
              ),
              Card(
                elevation: 2.0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage("https://fenzodigital.com/wp-content/uploads/2018/08/Mobile-App.png"),
                  ),
                  title: Text("App Development"),
                  subtitle: Text("Dart,Java,Kotlin,android and flutter"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}