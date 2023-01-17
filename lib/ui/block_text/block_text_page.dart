import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idiada_project/ui/block_text/bloc/blok_text_bloc.dart';

class BlockTextPage extends StatelessWidget {
  final String text;

  const BlockTextPage({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BlokTextBloc(),
      child: Scaffold(
        appBar: AppBar(),
       body:  _BlokTextPageContent(text: text,),
        //body: Text(text),
      ),
    );
  }
}

class _BlokTextPageContent extends StatefulWidget {
  final String text;


  const _BlokTextPageContent({Key? key, required this.text}) : super(key: key);

  @override
  State<_BlokTextPageContent> createState() => _BlokTextPageContentState();
}

class _BlokTextPageContentState extends State<_BlokTextPageContent> {

  @override
  void initState() {
    context.read<BlokTextBloc>().add(NewTextEvent(widget.text));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlokTextBloc, BlokTextState>(
      builder: (context, state) {
        if (state is ShowTextBlokState) {
          return Scrollbar(
            child: SingleChildScrollView(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(state.text),
              )),
            ),
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }


}
