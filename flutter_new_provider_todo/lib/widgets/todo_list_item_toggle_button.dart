import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/todo.dart';

class TodoListItemToggleButton extends StatelessWidget {
  const TodoListItemToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    print('build Toggle Item Button');

    return Consumer<Todo>(
      builder: (context, todo, child) {
        print('rebuilding Consumer Todo List Item Toggle Item Button');

        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            // Background color
            foregroundColor: Colors.white, 
            backgroundColor: todo.done ? Colors.blue : Colors.red,
            // Padding
            padding: const EdgeInsets.all(16.0),
            // Shape
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          onPressed: () {
            todo.toggle();
          },
          child: const Icon(
            Icons.refresh,
            color: Colors.white70,
          ),
        );
      },
    );
  }
}
