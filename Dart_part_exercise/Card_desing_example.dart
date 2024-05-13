import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
        child:Column(
        children:[
          
          CardWidget(),
          
            CardWidget(),
          
        ]
        
        
        )
        
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  CardWidget({super.key});
  Widget build(BuildContext context) {
    return SizedBox(
      height:330,
      child:
      Card(
        elevation: 4,
      shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(15)),
        child: Column(children: [
          ListTile(
              title: Text("Hello Worlds"),
              subtitle: Text("Welcome"),
              trailing: Icon(Icons.icecream)),
          Image.network(
              "https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg"),
          Padding(
            padding:EdgeInsets.all(5),
            child:
            Text(
              "Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem")),
          ButtonBar(children: [
            ElevatedButton(onPressed: () {}, child: Text("submit")),
            ElevatedButton(onPressed: () {}, child: Text("Cancel")),
          ])
        ])));
  }
}
