import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class RadioButtons extends StatefulWidget {
  const RadioButtons({
    super.key,
    this.values = const [],
    this.onSelected,
  });

  final List<String> values;
  final Function(String value)? onSelected;

  @override
  State<RadioButtons> createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioButtons> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...widget.values.mapIndexed((index, value) {
                return _buildContainer(text: value.toUpperCase(), index: index);
              }).toList()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContainer({
    required String text,
    required int index,
  }) {
    final isLast = index == widget.values.length - 1;
    return Padding(
      padding: EdgeInsets.only(right: isLast ? 0 : 10),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () => _onClick(index),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: selectedIndex == index
                ? AppColors.primaryColor.withOpacity(0.2)
                : null,
            borderRadius: BorderRadius.circular(8),
          ),
          child: _buildText(
            text: text,
            index: index,
          ),
        ),
      ),
    );
  }

  Widget _buildText({
    required String text,
    int? index,
  }) {
    return Text(
      text,
      style: TextStyle(
        color:
            selectedIndex == index ? AppColors.primaryColor : AppColors.grey948,
        fontSize: 16,
      ),
    );
  }

  void _onClick(int index) {
    if (widget.values.isNotEmpty) {
      if (selectedIndex != index) {
        final value = widget.values[index];
        widget.onSelected?.call(value);
        selectedIndex = index;
        setState(() {});
      }
    }
  }
}
