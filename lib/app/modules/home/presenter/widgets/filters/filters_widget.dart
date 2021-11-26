import 'package:flutter/material.dart';

import 'filter_item_widget.dart';

class FiltersWidget extends StatefulWidget {

   const FiltersWidget({Key? key}) : super(key: key);

  @override
  State<FiltersWidget> createState() => _FiltersWidgetState();
}

class _FiltersWidgetState extends State<FiltersWidget> {
  final ScrollController filterController = ScrollController();

  @override
  void dispose() {
    filterController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: filterController,
      child: SingleChildScrollView(
      controller: filterController,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: const [
            FilterItemWidget(),
             SizedBox(width: 10),
            FilterItemWidget(),
             SizedBox(width: 10),
            FilterItemWidget(),
             SizedBox(width: 10),
            FilterItemWidget(),
             SizedBox(width: 10),
            FilterItemWidget(),
             SizedBox(width: 10),
            FilterItemWidget(),
             SizedBox(width: 10),
            FilterItemWidget(),
             SizedBox(width: 10),
            FilterItemWidget(),
             SizedBox(width: 10),
            FilterItemWidget(),
             SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
