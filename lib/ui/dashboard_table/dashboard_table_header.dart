import 'package:flutter/material.dart';

class DashboardTableHeader extends StatelessWidget {
  const DashboardTableHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildRow(title: "ID"),
          _buildRow(title: "Success"),
          _buildRow(title: "Step"),
          _buildRow(title: "Increment"),
          _buildRow(title: "Attempt"),
          _buildRow(title: "Contact iteration"),
          _buildRow(title: "Equil iteration"),
          _buildRow(title: "Total iteration"),
          _buildRow(title: "Total time"),
          _buildRow(title: "Step time"),
          _buildRow(title: "Inc. of time"),
        ],
      ),
    );
  }

  Widget _buildRow({required String title}) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: 24,
        child: RotatedBox(quarterTurns: 1, child: Text(title)),
      ),
    );
  }
}
