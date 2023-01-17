part of 'blok_text_bloc.dart';

@immutable
abstract class BlokTextEvent {}


class NewTextEvent extends BlokTextEvent{
  final String text;

  NewTextEvent(this.text);
}