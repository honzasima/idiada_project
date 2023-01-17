import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'blok_text_event.dart';
part 'blok_text_state.dart';

class BlokTextBloc extends Bloc<BlokTextEvent, BlokTextState> {

  BlokTextBloc() : super(BlokTextInitial()) {

    on<BlokTextEvent>((event, emit) async {
      if(event is NewTextEvent ){
        emit(LoadingState());

        await Future.delayed(const Duration(seconds: 5));

        emit(ShowTextBlokState(event.text));
      }
    });

  }

}
