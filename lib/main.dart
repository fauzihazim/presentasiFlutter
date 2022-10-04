import 'package:flutter/material.dart';
import 'package:presentasi/models/student.dart';

import './screens/home.dart';
import './screens/create.dart';
import './screens/details.dart';
import './screens/edit.dart';
// https://medium.com/app-dev-community/flutter-crud-application-using-php-rest-api-bb585c4d7d9c

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter + PHP CRUD',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/create': (context) => Create(
              refreshStudentList: () {},
            ),
        '/details': (context) => Details(
              student: Student(),
            ),
        '/edit': (context) => Edit(
              student: Student(),
            ),
      },
    );
  }
}
