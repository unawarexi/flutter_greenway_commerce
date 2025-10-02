import 'package:flutter/material.dart';
import 'package:greenway_commerce/common/containers/circular_container.dart';
import 'package:greenway_commerce/utils/constants/colors.dart';
import 'package:greenway_commerce/utils/helpers/helper_functions.dart';

class TChoiceChip extends StatelessWidget {
  final String text;
  final bool selected;
  final ValueChanged<bool> onSelected;

  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    required this.onSelected,
  });

  // Check if text is EXACTLY a color name (no prefixes/suffixes)
  bool _isExactColorName() {
    final colorNames = [
      'red',
      'green',
      'blue',
      'yellow',
      'orange',
      'purple',
      'pink',
      'black',
      'blue',
      'grey',
      'brown'
    ];
    return colorNames.contains(text.toLowerCase().trim());
  }

  @override
  Widget build(BuildContext context) {
    // Only treat as color if it's an EXACT color name match
    final bool isColorChip = _isExactColorName();
    final Color? color = isColorChip ? THelperFunctions.getColor(text) : null;

    if (isColorChip && color != null) {
      // ===== COLOR CHIP: Circular with color display =====
      return ChoiceChip(
        label: const SizedBox.shrink(),
        selected: selected,
        onSelected: onSelected,
        avatar: TCircularContainer(
          backgroundColor: color,
          width: 24,
          height: 24,
        ),
        shape: const CircleBorder(),
        backgroundColor:
            selected ? color.withOpacity(0.9) : color.withOpacity(0.6),
        selectedColor: color.withOpacity(0.9),
        padding: EdgeInsets.zero,
        labelPadding: EdgeInsets.zero,
        side: selected
            ? const BorderSide(color: TColors.primary, width: 2.5)
            : BorderSide.none,
      );
    } else {
      // ===== TEXT CHIP: Rectangular with text display =====
      return ChoiceChip(
        label: Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(
          color: selected ? TColors.white : Colors.black87,
          fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
          fontSize: 14,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        side: BorderSide(
          color: selected ? TColors.primary : Colors.grey.shade400,
          width: selected ? 1.5 : 1,
        ),
        backgroundColor: Colors.transparent,
        selectedColor: TColors.primary,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        labelPadding: const EdgeInsets.symmetric(horizontal: 4),
      );
    }
  }
}
