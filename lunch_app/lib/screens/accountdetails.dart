import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/prototype/customer.dart'; // Import your Customer class

class AccountDetailsScreen extends StatefulWidget {
  static const String routeName = "/account-details";

  const AccountDetailsScreen({super.key});

  @override
  State<AccountDetailsScreen> createState() => _AccountDetailsScreenState();
}

class _AccountDetailsScreenState extends State<AccountDetailsScreen> {
  var counter = 0;

  // define a key to use later
  var key = "counter";

  @override
  void initState() {
    super.initState();
    _loadSavedData();
  }

  _loadSavedData() async {
    // Get shared preference instance
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      // Get value
      counter = (prefs.getInt(key) ?? 0);
    });
  }

  _onIncrementHit() async {
    // Get shared preference instance
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      // Get value
      counter = (prefs.getInt(key) ?? 0) + 1;
    });

    // Save Value
    prefs.setInt(key, counter);
  }

  _onDecrementHit() async {
    // Get shared preference instance
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      // Get value
     // counter = (prefs.getInt(key) ?? 0) - 1;
       if (counter > 0) {
      counter = (prefs.getInt(key) ?? 0) - 1;
    }
    });

    // Save Value
    prefs.setInt(key, counter);
  }

  @override
  Widget build(BuildContext context) {
    // Retrieve the list of customers
    final List<Customer> customers =
        ModalRoute.of(context)!.settings.arguments as List<Customer>;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Account Details"),
      ),
      body: Column(
        children: [
          Text(
            '$counter',
            textScaleFactor: 10.0,
          ),
          const Padding(padding: EdgeInsets.all(10.0)),
          ElevatedButton(
              onPressed: _onIncrementHit,
              child: const Text('Increment Counter')),
          const Padding(padding: EdgeInsets.all(10.0)),
          ElevatedButton(
              onPressed: _onDecrementHit,
              child: const Text('Decrement Counter')),
          Expanded(
            child: ListView.builder(
              itemCount: customers.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(customers[index].name),
                  subtitle: Text(customers[index].age.toString()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
