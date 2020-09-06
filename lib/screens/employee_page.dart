import 'package:flutter/material.dart';
import 'package:flutterfutureprovider/model/employee.dart';
import 'package:flutterfutureprovider/service/employee_service.dart';
import 'package:provider/provider.dart';
class EmployeePage extends StatelessWidget {
  final int id;
  final String name;
  final EmployeeService employeeService = EmployeeService();

  EmployeePage(this.id, this.name);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: FutureProvider(
        create: (context) => employeeService.fetchEmployee(id),
        child: Center(
          child:Consumer<Employee>(
            builder: (context, employee, _){
              return employee != null ? Text(employee.name): CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
