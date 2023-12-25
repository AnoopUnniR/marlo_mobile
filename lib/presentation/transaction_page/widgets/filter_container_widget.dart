import 'package:flutter/material.dart';

class FilterContainerWidget extends StatelessWidget {
  const FilterContainerWidget({
    super.key,
    required this.title,
    required this.choiceChipInnerWidget,
  });

  final String title;
  final Widget choiceChipInnerWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 19,
            ),
          ),
          choiceChipInnerWidget
        ],
      ),
    );
  }
}
