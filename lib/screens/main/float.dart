// TODO Complete the file, main/float.dart
//-----------------------------------------------------------------------------------------------------------------------------
//? Things to do:
//   1. Perform the following operations:
//        a. Add a new todo  - i.e. when the user taps on the 'plus' button
//           This operation will navigate to the '/new' route.
//        b. Refresh the screen - i.e. when the user taps on the 'Refresh' button
//-----------------------------------------------------------------------------------------------------------------------------

import 'package:exerciseee/models/todo.dart';
import 'package:flutter/material.dart';
import 'main_screen.dart';

class Float extends StatelessWidget {
  const Float({state}) : _state = state;

  final MainScreenState _state;

  @override
//   1. We perform the following operations:

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          tooltip: 'Add a new todo', //--- a. Add a new todo.
          child: Icon(Icons.add),
          heroTag: null,
          onPressed: () async {
            final Todo todo =
                await Navigator.of(context).pushNamed('/new') as Todo;
            if (todo != null) {
              _state.addTodo(todo);
            }
          },
        ),
        FloatingActionButton(
            tooltip: 'Refresh',
            child: Icon(Icons.refresh),
            heroTag: null,
            onPressed: () => _state.refreshME())
      ],
    );
  }
}
