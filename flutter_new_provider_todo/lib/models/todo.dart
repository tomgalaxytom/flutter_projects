import 'package:flutter/material.dart';

class Todo extends ChangeNotifier {
  final String id;
  String title;
  bool done;

  Todo({required this.id, required this.title, this.done = false});

  /// Toggles the value of the item and notify to listeners
  void toggle() {
    done = !done;
    notifyListeners();
  }
}
