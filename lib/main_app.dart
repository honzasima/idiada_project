import 'package:flutter/material.dart';
import 'package:idiada_project/ui/dashboard/dashboard_page.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashboardPage(),
    );
  }
}
