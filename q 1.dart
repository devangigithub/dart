import 'dart:convert';


class Student {
   int? id;
   String? name;
   String? course;

   Student({required this.id,required this.name,required this.course});

  factory Student.fromrow(Map<String,dynamic>data)
  {
    return Student(id: data['id'], name: data['name'], course: data['course']);
  }
}

void main()
{
  List<Map<String,dynamic>> Studentdata =[
    {
      'id': 1,'name' : "a",'course' : "flutter",
    },
    {
      'id': 2,'name' : "b",'course' : "flutter",
    },
    {
      'id': 3,'name' : "c",'course' : "flutter",
    },
    {
      'id': 4,'name' : "d",'course' : "flutter",
    },
    {
      'id': 5,'name' : "e",'course' : "flutter",
    },
    {
      'id': 6,'name' : "f",'course' : "flutter",
    },
    {
      'id': 7,'name' : "g",'course' : "flutter",
    },
    {
      'id': 8,'name' : "h",'course' : "flutter",
    },
    {
      'id': 9,'name' : "i",'course' : "flutter",
    },
    {
      'id': 10,'name' : "j",'course' : "flutter",
    },
    {
      'id': 11,'name' : "k",'course' : "flutter",
    },
    {
      'id': 12,'name' : "l",'course' : "flutter",
    },
    {
      'id': 13,'name' : "m",'course' : "flutter",
    },
    {
      'id': 14,'name' : "n",'course' : "flutter",
    },
    {
      'id': 15,'name' : "o",'course' : "flutter",
    },
    {
      'id': 16,'name' : "p",'course' : "flutter",
    },
    {
      'id': 17,'name' : "q",'course' : "flutter",
    },
    {
      'id': 18,'name' : "r",'course' : "flutter",
    },
    {
      'id': 19,'name' : "s",'course' : "flutter",
    },
    {
      'id': 20,'name' : "t",'course' : "flutter",
    },
    {
      'id': 21,'name' : "u",'course' : "flutter",
    },
    {
      'id': 22,'name' : "v",'course' : "flutter",
    },
    {
      'id': 23,'name' : "w",'course' : "flutter",
    },
    {
      'id': 24,'name' : "x",'course' : "flutter",
    },
    {
      'id': 25,'name' : "y",'course' : "flutter",
    },
    {
      'id': 26,'name' : "z",'course' : "flutter",
    },
    {
      'id': 27,'name' : "aa",'course' : "flutter",
    },
    {
      'id': 28,'name' : "bb",'course' : "flutter",
    },
    {
      'id': 29,'name' : "cc",'course' : "flutter",
    },
    {
      'id': 30,'name' : "dd",'course' : "flutter",
    },

  ];

  List<Student> allStudent =[];

  Studentdata.forEach((Map<String,dynamic>data) 
  {
    allStudent.add(Student.fromrow(data));
   });

   allStudent.forEach((Student data) {
    print("Roll No : ${data.id}");
     print("Name :${data.name}"); 
     print("Course :${data.course}");
    });
   
}