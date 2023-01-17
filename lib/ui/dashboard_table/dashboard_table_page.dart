import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idiada_project/data/model/content.dart';
import 'package:idiada_project/ui/dashboard_table/dashboard_table_header.dart';
import 'package:idiada_project/ui/dashboard_table/dashboard_table_row.dart';
import 'package:idiada_project/ui/load_file/bloc/load_file_cubit.dart';
import 'package:idiada_project/widget/drawer_designed.dart';

class DashboardTablePage extends StatefulWidget {
  const DashboardTablePage({Key? key}) : super(key: key);

  @override
  State<DashboardTablePage> createState() => _DashboardTablePageState();
}

class _DashboardTablePageState extends State<DashboardTablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
        ),
        drawer: const DrawerDesigned(),
        body: BlocBuilder<LoadFileCubit, LoadFileState>(builder: (context, state) {
          return state.maybeWhen(
            orElse: orElse,
            dataLoaded: dataLoaded,
            initial: init,
          );
        }));
  }

  Widget init() {
    return TextButton(
      onPressed: () {
        context.read<LoadFileCubit>().downloadFile();
      },
      child: const Center(child: Text("Click for load file")),
    );
  }

  Widget orElse() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget dataLoaded(List<Content> data) {
    return Column(
      children: [
        DashboardTableHeader(),
        Expanded(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) => itemBuild(context, index, data),
          ),
        ),
      ],
    );
  }

  Widget itemBuild(BuildContext context, int index, List<Content> data) {
    return DashboardTableRow(
      content: data[index],
    );
  }
}
