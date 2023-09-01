void main(){
Employee emp = Employee();
emp.empName = "sakku";
emp.empAge = 4;
emp.empSalary = 400;

print('employee name is ${emp.empName}');
print('employee age is ${emp.empAge}');
print('employee salary is ${emp.empSalary}');
}

class Employee{
  var _empName = "Meow";
  var _empAge = 5;
  var _empSalary = 500;

  get empName => _empName;

  set empName(value) {
    _empName = value;
  }

  get empAge => _empAge;

  get empSalary => _empSalary;

  set empSalary(value) {
    _empSalary = value;
  }

  set empAge(value) {
    _empAge = value;
  }
}