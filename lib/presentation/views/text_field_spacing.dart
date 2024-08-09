import 'package:flutter/material.dart';

class TextFieldSpacingView extends StatelessWidget {
  const TextFieldSpacingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Textfield Spacing View"),
      ),
      body: Column(
        children: [
          TextFormField(
            style: TextStyle(
              letterSpacing: 10
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10)
            ),
          ),
        ],
      ),
    );
  }
}
