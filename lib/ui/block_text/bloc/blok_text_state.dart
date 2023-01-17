part of 'blok_text_bloc.dart';

@immutable
abstract class BlokTextState {}

class BlokTextInitial extends BlokTextState {}

class LoadingState extends BlokTextState {}

class ShowTextBlokState extends BlokTextState {
  final String text;

  ShowTextBlokState(this.text);

}