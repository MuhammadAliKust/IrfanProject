import 'package:flutter/material.dart';

class SingleSelectionDemoView extends StatefulWidget {
  const SingleSelectionDemoView({super.key});

  @override
  State<SingleSelectionDemoView> createState() =>
      _SingleSelectionDemoViewState();
}

class _SingleSelectionDemoViewState extends State<SingleSelectionDemoView> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Selection"),
      ),
      body: ListView.builder(itemBuilder: (context, i) {
        return ListTile(
          onTap: () {
            selectedIndex = i;
            setState(() {});
          },
          tileColor: selectedIndex == i ? Colors.green:Colors.white,
          leading: Icon(Icons.notifications),
          title: Text(i.toString() + " Selected Index $selectedIndex"),
          subtitle: Text("Sub Title"),
        );
      }),
    );
  }
}
