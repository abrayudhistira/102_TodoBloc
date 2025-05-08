import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/bloc/todo_bloc.dart';

class TodoPage extends StatelessWidget {
const TodoPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    final _key = GlobalKey<FormState>();
    final _controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text('Todo List'),
              Row(
                children: [
                  Column(
                    children: [
                      Text('Selected Date'),
                      BlocBuilder<TodoBloc, TodoState>(
                        builder: (context, state) {
                          if (state is TodoLoaded) {
                            if (state.selectedDate != null) {
                              return Text('${state.selectedDate!.day}/${state.selectedDate!.month}/${state.selectedDate!.year}');
                            }
                          }
                          return const Text('No date selected');
                        }
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          )
        ),
    );
  }
}