import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:idiada_project/data/model/content.dart';

part 'load_file_cubit.freezed.dart';
part 'load_file_state.dart';

class LoadFileCubit extends Cubit<LoadFileState> {
  static const String FILE_URL = "https://drive.google.com/uc?export=download&id=1vy1vS_4scOtQge7k7xnY_DQXwOmHmTtW";

  LoadFileCubit() : super(const LoadFileState.initial());

  Future<void> downloadFile() async {
    emit(const LoadFileState.loading());

    var request = await HttpClient().getUrl(Uri.parse(FILE_URL));
    var response = await request.close();

    String data = await response.transform(utf8.decoder).join();
    List<dynamic> jsonData = jsonDecode(data);

    var dataContentList = jsonData.map((line) => Content.fromJson(line)).toList();

    emit(LoadFileState.dataLoaded(dataContentList));
  }

  unloadFile() {
    emit(const LoadFileState.initial());
  }
}
