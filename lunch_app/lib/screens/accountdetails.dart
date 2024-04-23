import 'package:flutter/material.dart';

import '../model/prototype/customer.dart'; // Import your Customer class

class AccountDetailsScreen extends StatelessWidget {
  static const String routeName = "/account-details";

  const AccountDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve the list of customers
    final List<Customer> customers =
        ModalRoute.of(context)!.settings.arguments as List<Customer>;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Account Details"),
      ),
      body: ListView.builder(
        itemCount: customers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(customers[index].name),
            subtitle: Text(customers[index].age.toString()),
          );
        },
      ),
    );
  }
}
