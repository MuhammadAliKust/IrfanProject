import 'package:flutter/material.dart';

import '../../models/task_model.dart';

class DynamicDataView extends StatelessWidget {
  DynamicDataView({super.key});

  List<TaskModel> taskList = [
    TaskModel(
        title: 'First',
        subTitle: 'First subtitle',
        image: 'assets/images/1.jpeg'),
    TaskModel(
        title: 'Second',
        subTitle: 'Second subtitle',
        image: 'assets/images/get_started.png'),
    TaskModel(
        title: 'Third',
        subTitle: 'Third subtitle',
        image: 'assets/images/1.jpeg'),
    // TaskModel(title: 'Fourth ', subTitle: 'Fourth subtitle'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic Data View"),
      ),
      body: ListView.builder(
          itemCount: taskList.length,
          itemBuilder: (context, i) {
            return ListTile(
              leading: Image.asset(taskList[i].image.toString()),
              title: Text(taskList[i].title.toString()),
              subtitle: Text(taskList[i].subTitle.toString()),
            );
          }),
    );
  }
}
