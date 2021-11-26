import 'package:flutter/material.dart';

class FilterItemWidget extends StatefulWidget {
  const FilterItemWidget({Key? key}) : super(key: key);

  @override
  _FilterItemWidgetState createState() => _FilterItemWidgetState();
}

class _FilterItemWidgetState extends State<FilterItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(15),
      ),
      height: 50,
      width: 150,
    );
  }
}
