import 'package:flutter/material.dart';
import 'package:idiada_project/data/model/content.dart';
import 'package:idiada_project/ui/block_text/block_text_page.dart';

class DashboardCard extends StatelessWidget {
  final Content content;

  const DashboardCard({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _buildRow(title: "ID", value: content.id),
            _buildRow(title: "Success", value: content.success),
            _buildRow(title: "Step", value: content.step),
            _buildRow(title: "Increment", value: content.increment),
            _buildRow(title: "Attempt", value: content.attempt),
            _buildRow(title: "Contact iteration", value: content.contactIteration),
            _buildRow(title: "Equil iteration", value: content.equilIteration),
            _buildRow(title: "Total iteration", value: content.totalIteration),
            _buildRow(title: "Total time", value: content.totalTime),
            _buildRow(title: "Step time", value: content.step),
            _buildRow(title: "Inc. of time", value: content.inOfTime),

            Divider(
              height: 1,
            ),
            _buildMenu(context),
          ],
        ),
      ),
    );
  }

  Widget _buildRow({required String title, required String value}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value),
        ],
      ),
    );
  }

  Widget _buildMenu(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>  BlockTextPage(text: content.blockText,),
              ),
            );
        }, icon: Icon(Icons.short_text_outlined),),
        TextButton(
          onPressed: () {},
          child: Text("Equilibrium"),
        ),
      ],
    );
  }

}
