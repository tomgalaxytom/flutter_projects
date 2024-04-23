import 'package:flutter/material.dart';

import '../model/prototype/customer.dart';
import 'accountdetails.dart'; // Import your Customer class

class AccountScreen extends StatelessWidget {
  static const String routeName = "/account";

  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Customer> customers = [
      Customer('Jack', 23),
      Customer('Adam', 27),
      Customer('Katherin', 25),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Account"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: customers.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              child: ListTile(
                title: Text(customers[index].name),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AccountDetailsScreen.routeName,
                    arguments: customers, // Pass the entire list as an argument
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
