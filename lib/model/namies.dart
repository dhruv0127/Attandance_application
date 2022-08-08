class StudentDataModel {
  static final studentdata = [
    StudentDataCreation(200840131001, "Heya Darji", "3",
        "https://rngpit.ac.in/Uploads/photograph/DJR.jpg")
  ];
}

class StudentDataCreation {
  final int enrollment;
  final String studentName;
  final String semesterNumber;
  final String image;

  StudentDataCreation(
      this.enrollment, this.studentName, this.semesterNumber, this.image);
}
