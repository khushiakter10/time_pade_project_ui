import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class CustomChipWidget extends StatelessWidget {
  final String label;
  final String imagePath;
  final Color defaultColor;
  final int index;
  final bool isSelected;
  final Function(int) onSelect;
  final TextStyle titleTextStyle;

  const CustomChipWidget({
    super.key,
    required this.label,
    required this.imagePath,
    required this.defaultColor,
    required this.index,
    required this.isSelected,
    required this.onSelect, required this.titleTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onSelect(index),
      child: Chip(
        labelPadding: const EdgeInsets.all(5.0),
        avatar: CircleAvatar(
          radius: 40,
          backgroundColor: Colors.grey.shade600,
          child: ClipOval(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        label: Text(
          label,
          style:  titleTextStyle,
        ),
        backgroundColor: isSelected ? AppColors.cFFD27C : defaultColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(39.0),
          side: BorderSide.none,
        ),
      ),
    );
  }
}
