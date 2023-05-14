import 'dart:ffi';

class Student {
  String? id;
  String? name;
  int? age;

  Student({ this.id, this.name, this.age });
}


void main(List<String> args) {
  List<Student> students = [
    Student(
      name: "Huy",
      age: 20,
      id: "1"
    ),
    Student(
      name: "Nam",
      age: 21,
      id: "2"
    )
  ];
  
  var el = students.firstWhere((student) => student.name == "Huy");
  students.remove(el);
  students.add(Student(
    name: "Minh",
    age: 30,
    id: "3"
  ));

  students.addAll([
    Student(),
    Student()
  ]);
  print(students.length);

  List<Map<String, dynamic>> books = [
    {
      "name": "book 1",
      "eps": "3001"
    },
    {
      "name": "book 2",
      "eps": "2002"
    },
    {
      "name": "book 3",
      "eps": "1001"
    }
  ];
  var result = books.where((book) => int.parse(book["eps"]) > 1001);
  print(result);
}


