import 'package:aayushchaube/themes/custom_fonts.dart';
import 'package:aayushchaube/themes/custom_themes.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatefulWidget {
  const MenuItem({
    super.key,
    required this.label,
    required this.width,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final double width;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final textColor = widget.isSelected || isHovered
        ? CustomThemes.primaryColor
        : CustomThemes.textColor;

    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: InkWell(
        onTap: widget.onTap,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Container(
          width: widget.width,
          height: 35,
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 2),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.label,
              style: CustomFonts.font9.copyWith(color: textColor),
              textAlign: TextAlign.center,
              overflow: TextOverflow.visible,
            ),
          ),
        ),
      ),
    );
  }
}
