import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 16, right: 16, top: 16),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _buildRow(title: "ID", value: "placeholder"),
            _buildRow(title: "Success", value: "placeholder"),
            _buildRow(title: "Step", value: "placeholder"),
            _buildRow(title: "Increment", value: "placeholder"),
            _buildRow(title: "Attempt", value: "placeholder"),
            _buildRow(title: "Contact iteration", value: "placeholder"),
            _buildRow(title: "Equil iteration", value: "placeholder"),
            _buildRow(title: "Total iteration", value: "placeholder"),
            _buildRow(title: "Total time", value: "placeholder"),
            _buildRow(title: "Step time", value: "placeholder"),
            _buildRow(title: "Inc. of time", value: "placeholder"),
            Divider(
              height: 1,
            ),
            _buildMenu(),
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

  Widget _buildMenu() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.short_text_outlined)),
        TextButton(
          onPressed: () {},
          child: Text("Equilibrum"),
        ),
      ],
    );
  }
}
