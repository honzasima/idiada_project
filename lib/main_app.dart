import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idiada_project/ui/dashboard/dashboard_page.dart';
import 'package:idiada_project/ui/load_file/bloc/load_file_cubit.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoadFileCubit(),
        ),
      ],
      child: MaterialApp(
        home: DashboardPage(),
      ),
    );
  }
}
