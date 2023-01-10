import 'package:flutter/material.dart';
import 'package:idiada_project/ui/dashboard/dashboard_card.dart';
import 'package:idiada_project/widget/drawer_designed.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      drawer: const DrawerDesigned(),
      body: ListView(
        children: [
          DashboardCard(),
          DashboardCard(),
          DashboardCard(),
        ],
      ),
    );
  }
}
