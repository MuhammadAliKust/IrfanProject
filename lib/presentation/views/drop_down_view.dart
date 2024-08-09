import 'package:flutter/material.dart';

class DropDownView extends StatefulWidget {
  DropDownView({super.key});

  @override
  State<DropDownView> createState() => _DropDownViewState();
}

class _DropDownViewState extends State<DropDownView> {
  List<String> languageList = ['English', 'Urdu', 'Punjabi'];
  String? selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop Down View"),
      ),
      body: Center(
        child: DropdownButton(
            items: languageList
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ))
                .toList(),
            value: selectedLanguage,
            isExpanded: true,
            hint: Text("Select Language"),
            icon: Icon(Icons.add),
            underline: SizedBox(),
            onChanged: (val) {
              selectedLanguage = val;
              setState(() {});
            }),
      ),
    );
  }
}



