import 'package:flutter/material.dart';
import 'package:todo_app/util/my_button.dart';

// ignore: must_be_immutable
class DilogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DilogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        height: 150.0,
        width: 300.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user imput
            TextField(
              maxLength: 35,
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new task',
              ),
            ),
            // buttons (s + c)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: 'Save', onPressed: onSave),
                const SizedBox(
                  width: 8.0,
                ),
                MyButton(text: 'Cancel', onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
