import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterfutureprovider/model/employee.dart';
import 'package:flutterfutureprovider/screens/employee_page.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var emplyees = Provider.of<List<Employee>>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: (emplyees == null)
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
          itemCount: emplyees.length,
          itemBuilder: (context, index) {
            var employee = emplyees[index];
            return ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          EmployeePage(employee.id, employee.name)));
                },
                title: Text(employee.name), subtitle: Text(employee.email));
          }),
    );
  }
}
