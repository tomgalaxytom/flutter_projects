import 'package:flutter/material.dart';
import 'package:using_listview/contactlist/contact_list_item.dart';
import 'package:using_listview/contactlist/modal/contact.dart';

class ContactsList extends StatelessWidget {
  final List<ContactModal> _contactModal;

  const ContactsList(this._contactModal, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      children: _buildContactsList(),
    );
  }

  List<ContactListItem> _buildContactsList() {
    return _contactModal.map((contact) => ContactListItem(contact)).toList();
  }
}
