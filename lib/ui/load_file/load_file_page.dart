import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idiada_project/ui/load_file/bloc/load_file_cubit.dart';

class LoadFilePage extends StatelessWidget {
  const LoadFilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Load file",
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              context.read<LoadFileCubit>().downloadFile();
            },
            child: const Text("Download"),
          ),
        ],
      ),
    );
    ;
  }
}
