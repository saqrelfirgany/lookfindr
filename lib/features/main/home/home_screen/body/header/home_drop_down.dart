import 'package:flutter/material.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/theme/text_styles.dart';

class HomeLocationsDropDown extends StatefulWidget {
  const HomeLocationsDropDown({super.key});

  @override
  State<HomeLocationsDropDown> createState() => _HomeLocationsDropDownState();
}

class _HomeLocationsDropDownState extends State<HomeLocationsDropDown> {
  String _selectedLocation = 'Aspen, USA';

  final List<String> _locations = [
    'Aspen, USA',
    'Vail, USA',
    'Breckenridge, USA'
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: _selectedLocation,
        padding: EdgeInsets.zero,
        icon: const Icon(Icons.keyboard_arrow_down, size: 20),
        elevation: 0,
        style: TextStyles.locationDropdown,
        onChanged: (String? newValue) {
          setState(() {
            _selectedLocation = newValue!;
          });
        },
        items: _locations.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Row(
              children: [
                const Icon(
                  Icons.location_on,
                  size: 16,
                  color: AppColors.primaryText,
                ),
                const SizedBox(width: 4),
                Text(value),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
