import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CalendarDropdownButton extends StatefulWidget {
  const CalendarDropdownButton({
    super.key,
    required this.initialValue,
    required this.values,
    this.onChanged,
  });

  final String initialValue;
  final List<String> values;
  final Function(String value)? onChanged;

  @override
  State<CalendarDropdownButton> createState() => _CalendarDropdownButtonState();
}

class _CalendarDropdownButtonState extends State<CalendarDropdownButton> {
  bool isHover = false;

  String? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onTap,
      hoverColor: AppColors.primaryColor.withOpacity(0.1),
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.primaryColor,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              _selectedValue ?? '',
              style: const TextStyle(
                color: AppColors.grey0A4,
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 20),
            const Icon(
              Icons.calendar_month_outlined,
              color: AppColors.grey0A4,
            )
          ],
        ),
      ),
    );
  }

  void _onTap() {
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;

    final RenderBox button = context.findRenderObject() as RenderBox;

    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(const Offset(0, -65), ancestor: overlay),
        button.localToGlobal(
          button.size.bottomRight(Offset.zero) + const Offset(-50, 0),
          ancestor: overlay,
        ),
      ),
      Offset.zero & overlay.size,
    );

    showMenu(
      context: context,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height / 3,
        // maxWidth: width / 1.5, // width =  MediaQuery.of(context).size.width;
        maxWidth: button.size.width,
        minWidth: button.size.width,
      ),
      position: position.shift(const Offset(0, 105)),
      items: [
        ...widget.values.map((value) {
          return _buildPopUpMenuItem(
            onTap: () {
              _selectedValue = value;
              setState(() {});
              widget.onChanged?.call(value);
            },
            value: value,
          );
        }),
      ],
    );
  }

  PopupMenuItem _buildPopUpMenuItem({
    Function()? onTap,
    required String value,
  }) {
    return PopupMenuItem(
      onTap: onTap,
      value: value,
      height: 30,
      child: Text(
        value,
        style: const TextStyle(
          color: AppColors.grey948,
          fontSize: 16,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
