import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

const d_green = Color(0xFF54D3C2);

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotel Booking',
      home:HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(child: Column(
          children:[
            Container(
              height: 300,
              color: Colors.blue,),
            Container(
              height: 800,
              color: Colors.red,)
          ],),
      )
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);

  @override
  Widget build(BuildContext context){
    return AppBar(
      leading: IconButton(
        icon:Icon(Icons.arrow_back,
        color: Colors.grey[800],
        size: 30,
      ),
      onPressed: null,
      ),

      title: Text('Explore',style:TextStyle(
        color: Colors.black,
        fontSize: 22,
        fontWeight: FontWeight.w800,
        //fontFamily: 'arial',
        ),
      ),
      actions: [
        IconButton(
          icon:Icon(Icons.favorite_outline_rounded,
            color: Colors.grey[800],
            size: 30,
          ),
          onPressed: null,
        ),

        IconButton(
          icon:Icon(Icons.place,
            color: Colors.grey[800],
            size: 30,
          ),
          onPressed: null,
        ),

      ],
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }
}

class SearchSection extends StatelessWidget{
  
}