import 'dart:convert';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  List? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Load local JSON file"),
        ),
        body: Center(
          // Use future builder and DefaultAssetBundle to load the local JSON file
          child: FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString('data_repo/starwars_data.json'),
              builder: (context, snapshot) {
                // Decode the JSON
                var newData = json.decode(snapshot.data.toString());

                return ListView.builder(
                  // Build the ListView
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text("Name: " + newData[index]['name']),
                          Text("Height: " + newData[index]['height']),
                          Text("Mass: " + newData[index]['mass']),
                          Text("Hair Color: " + newData[index]['hair_color']),
                          Text("Skin Color: " + newData[index]['skin_color']),
                          Text("Eye Color: " + newData[index]['eye_color']),
                          Text("Birth Year: " + newData[index]['birth_year']),
                          Text("Gender: " + newData[index]['gender'])
                        ],
                      ),
                    );
                  },
                  itemCount: newData == null ? 0 : newData.length,
                );
              }),
        ));
  }
}
