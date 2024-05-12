import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Home(
          todo: pro,
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  final List<Person> todo;

  Home({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailsPage(person: todo[index])));
                },
                child: Card(
                  child: ListTile(
                    title: Text("${todo[index].firstName!}"),
                    subtitle: Text("${todo[index].lastName!}"),
                  ),
                ));
          },
          itemCount: todo.length),
    );
  }
}

class Person {
  String? firstName;
  String? lastName;

  Person({this.firstName, this.lastName});
}

var pro = [
  Person(firstName: "Kamal", lastName: "Srinivasan"),
  Person(firstName: "Mervin", lastName: "Thomas"),
];

class DetailsPage extends StatelessWidget {
  final Person person;

  const DetailsPage({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'First Name: ${person.firstName}',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Last Name: ${person.lastName}',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
