import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
      ),
      //drawer: const DrawerDesigned(),
      body: Center(
          child: Text(
        "IDIADA s.r.o.",
        style: Theme.of(context).textTheme.headline3,
      )),
    );
  }
}
