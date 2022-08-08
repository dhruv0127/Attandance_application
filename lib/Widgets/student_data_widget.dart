import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/namies.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({Key? key, required this.studentDataCreation})
      : super(key: key);

  final StudentDataCreation studentDataCreation;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${studentDataCreation.studentName} is pressed");
        },
        leading: Image.network(studentDataCreation.image),
        title: Text(studentDataCreation.studentName),
        subtitle: Text(studentDataCreation.enrollment.toString()),
      ),
    );
  }
}
