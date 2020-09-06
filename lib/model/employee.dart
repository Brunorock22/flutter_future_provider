class Employee{
  final int id;
  final String name;
  final String phone;
  final String email;

  Employee({this.id, this.name, this.phone, this.email});

  Employee.fromJson(Map<String, dynamic> parsedJson):
  id = parsedJson["id"],
  name = parsedJson["name"],
  phone = parsedJson["phone"],
  email = parsedJson["email"];

}