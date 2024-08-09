import 'package:flutter/material.dart';

class MultiSelectionDemoView extends StatefulWidget {
  const MultiSelectionDemoView({super.key});

  @override
  State<MultiSelectionDemoView> createState() => _MultiSelectionDemoViewState();
}

class _MultiSelectionDemoViewState extends State<MultiSelectionDemoView> {
  List<int> selectedIndexList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multi Selection"),
      ),
      body: ListView.builder(itemBuilder: (context, i) {
        return ListTile(
          onTap: () {
            if (selectedIndexList.contains(i)) {
              selectedIndexList.remove(i);
            } else {
              selectedIndexList.add(i);
            }
            setState(() {});
            // selectedIndex = i;
            // setState(() {});
          },
          tileColor:
              selectedIndexList.contains(i) ? Colors.green : Colors.white,
          leading: Icon(Icons.notifications),
          title: Text(i.toString() + " Selected Index: $selectedIndexList"),
          subtitle: Text("Sub Title"),
        );
      }),
    );
  }
}
