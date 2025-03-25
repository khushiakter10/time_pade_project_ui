import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import '../../../gen/assets.gen.dart';

class ChipScren extends StatefulWidget {
  const ChipScren({super.key});

  @override
  _ChipScrenState createState() => _ChipScrenState();
}

class _ChipScrenState extends State<ChipScren> {
  final List<bool> _selectedChips = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Wrap Widget, Chips Demo")),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              chipForRow('Health',  Color(0xFFFF8A65), Assets.images.chad.path, 0),
              chipForRow('Hot Dog',  Color(0xFFFF4C3F7), Assets.images.gold.path,1),
              chipForRow('Burger',  Color(0xFF9575CD), Assets.images.icon.path, 2),
            ],
          ),
        ),
      ),
    );
  }

  Widget chipForRow(String label, Color color, String imagePath, int index) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            // Deselect all chips first
            for (int i = 0; i < _selectedChips.length; i++) {
              _selectedChips[i] = false;
            }
            // Select the tapped chip
            _selectedChips[index] = true;
          });
        },
        child: Chip(
          labelPadding: const EdgeInsets.all(5.0),
          avatar: CircleAvatar(
            radius: 30,
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
            style:  TextFontStyle.headline32343Ew700text14,
          ),
          backgroundColor: _selectedChips[index] ? AppColors.cFFD27C : AppColors.cFFFFFF, // Toggle color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(39.0), // Set the border radius here
            side: BorderSide.none, // Ensures no border is visible
          ),
        ),
      ),
    );
  }
}
