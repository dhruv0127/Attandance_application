import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/student_data_widget.dart';
import 'package:flutter_application_1/Widgets/top_left_drawer.dart';
import 'package:flutter_application_1/model/namies.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Dhaval rana";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dhaval Rana",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: StudentDataModel.studentdata.length,
        itemBuilder: (BuildContext context, int index) {
          return DataWidget(
            studentDataCreation: StudentDataModel.studentdata[index],
          );
        },
      ),
      drawer: const TopLeftThreeLines(),
    );
  }
}
