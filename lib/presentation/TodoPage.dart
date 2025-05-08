import 'package:flutter/material.dart';

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