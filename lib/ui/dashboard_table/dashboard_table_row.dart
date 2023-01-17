import 'package:flutter/material.dart';
import 'package:idiada_project/data/model/content.dart';
import 'package:idiada_project/ui/block_text/block_text_page.dart';

class DashboardTableRow extends StatelessWidget {
  final Content content;

  const DashboardTableRow({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 4, right: 4, top: 8),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            _buildRow(value: content.id),
            _buildRow(value: content.success),
            _buildRow(value: content.step),
            _buildRow(value: content.increment),
            _buildRow(value: content.attempt),
            _buildRow(value: content.contactIteration),
            _buildRow(value: content.equilIteration),
            _buildRow(value: content.totalIteration),
            _buildRow(value: content.totalTime),
            _buildRow(value: content.step),
            _buildRow(value: content.inOfTime),
          ],
        ),
      ),
    );
  }

  Widget _buildRow({required String value}) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: 24,
        child: Text(value),
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
                builder: (context) => BlockTextPage(
                  text: content.blockText,
                ),
              ),
            );
          },
          icon: Icon(Icons.short_text_outlined),
        ),
        TextButton(
          onPressed: () {},
          child: Text("Equilibrum"),
        ),
      ],
    );
  }
}
