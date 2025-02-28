enum PersonJob{
  student,
  developer,
}

abstract class Person{
  String getName();
  String getJobName();


  factory Person(PersonJob job) {
    switch(job){
      case PersonJob.student:
        return Student();
      case PersonJob.developer:
        return Developer();
    }
  }
}

class Student implements Person{
  final String name = "Andrew";
  final String jobName = "High School Student";
  
  @override
  String getJobName() {
    return jobName;
  }
  
  @override
  String getName() {
    return name;
  }
}

class Developer implements Person {
  final String name = "John";
  final String jobName = "Frontend Developer";
  
  @override
  String getJobName() {
    return jobName; 
  }
  
  @override
  String getName() {
    return name;
  }
}
  
void main(){
  print("Person 1: ${Person(PersonJob.student).getJobName()}");
  print("Person 2: ${Person(PersonJob.developer).getJobName()}");
}
