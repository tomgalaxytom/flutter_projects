import 'package:flutter/material.dart';
import 'package:using_listview/contactlist/modal/contact.dart';

class ContactListItem extends StatelessWidget {
  final ContactModal _contactModal;

  const ContactListItem(this._contactModal, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(child: Text(_contactModal.fullName[0])),
        title: Text(_contactModal.fullName),
        subtitle: Text(_contactModal.email));
  }
}
