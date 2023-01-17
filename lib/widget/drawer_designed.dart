import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:idiada_project/ui/about/about_page.dart';
import 'package:idiada_project/ui/dashboard/dashboard_page.dart';
import 'package:idiada_project/ui/dashboard_table/dashboard_table_page.dart';
import 'package:idiada_project/ui/load_file/bloc/load_file_cubit.dart';
import 'package:idiada_project/ui/load_file/load_file_page.dart';

class DrawerDesigned extends StatelessWidget {
  const DrawerDesigned({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: SvgPicture.asset(
              "assets/logo.svg",
              semanticsLabel: 'Logo',
            ),
          ),
          ListTile(
            leading: const Icon(Icons.dashboard),
            title: const Text('Dashboard'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const DashboardPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.table_rows),
            title: const Text('Dashboard Table'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const DashboardTablePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('About'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AboutPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.file_download),
            title: const Text('Load file'),
            onTap: () async {
              Navigator.pop(context);

              showModalBottomSheet(
                context: context,
                builder: (contextSheet) {
                  return BlocProvider.value(
                    value: BlocProvider.of<LoadFileCubit>(context),
                    child: const LoadFilePage(),
                  );
                },
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.file_download),
            title: const Text('Unload file'),
            onTap: () async {
              Navigator.pop(context);

              context.read<LoadFileCubit>().unloadFile();
            },
          ),
        ],
      ),
    );
  }
}
