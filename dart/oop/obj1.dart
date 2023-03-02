enum Grade { A, B, C, D, F }

class Human {
  Human(this.firstName, this.lastName);

  String firstName;
  String lastName;
  String get fullName => '$firstName $lastName';

  @override
  String toString() => fullName;
}

class Student {
  Student(this.firstName, this.lastName);

  String firstName;
  String lastName;
  var grades = <Grade>[];
  String get fullName => '$firstName $lastName';

  @override
  String toString() => fullName;
}