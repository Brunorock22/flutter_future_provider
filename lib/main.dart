import 'package:flutter/material.dart';
import 'package:flutterfutureprovider/screens/home_screen.dart';
import 'package:flutterfutureprovider/service/employee_service.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final EmployeeService employeeService = EmployeeService();

  @override
  Widget build(BuildContext context) {
    return FutureProvider(
      create: (context) => employeeService.fetchEmployees(),
      catchError: (context, error) {
        print(error);
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
