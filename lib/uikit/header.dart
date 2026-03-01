import 'package:aayushchaube/constants/assets_path.dart';
import 'package:aayushchaube/constants/string_constants.dart';
import 'package:aayushchaube/models/menu_item_properties.dart';
import 'package:aayushchaube/themes/custom_fonts.dart';
import 'package:aayushchaube/themes/custom_themes.dart';
import 'package:aayushchaube/uikit/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics.dart';

class Header extends StatefulWidget implements PreferredSizeWidget {
  const Header({
    super.key,
    required this.navigatorKeys,
    required this.selectedIndex,
    required this.onSelect,
  });

  final List<GlobalKey> navigatorKeys;
  final int selectedIndex;
  final ValueChanged<int> onSelect;

  @override
  State<Header> createState() => _HeaderState();

  @override
  Size get preferredSize => const Size.fromHeight(131.4);
}

class _HeaderState extends State<Header> {
  final List<MenuItemProperties> menuItems = [
    MenuItemProperties(label: StringConstants.aboutMe, width: 96),
    MenuItemProperties(label: StringConstants.resume, width: 79),
    MenuItemProperties(label: StringConstants.projects, width: 93),
    MenuItemProperties(label: StringConstants.contact, width: 91),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 131.4,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.transparent, // --brwb: 0px
            width: 0,
          ),
        ),
        color: CustomThemes.backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      color: CustomThemes.primaryColor,
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    margin: const EdgeInsets.only(right: 13.32),
                    child: Text(
                      StringConstants.title,
                      style: CustomFonts.font4.copyWith(
                        color: CustomThemes.textColor,
                        height: 1.0,
                        overflow: TextOverflow.clip,
                      ),
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(
                    width: 6,
                    child: VectorGraphic(
                      loader: AssetBytesLoader(AssetsPath.forwardSlashSVG),
                      height: 17.5,
                      width: 7.5,
                      clipBehavior: Clip.none,
                      opacity: AlwaysStoppedAnimation(1),
                    ),
                  ),
                  Text(
                    StringConstants.designation,
                    style: CustomFonts.font7.copyWith(
                      color: CustomThemes.textColor,
                      letterSpacing: 0.02,
                      height: 1.2,
                      overflow: TextOverflow.clip,
                    ),
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              textDirection: TextDirection.ltr,
              children: List.generate(menuItems.length, (index) {
                final item = menuItems[index];
                return MenuItem(
                  label: item.label,
                  width: item.width,
                  isSelected: widget.selectedIndex == index,
                  onTap: () {
                    widget.onSelect(index);
                    final key = widget.navigatorKeys[index];

                    if (key.currentContext != null) {
                      Scrollable.ensureVisible(
                        key.currentContext!,
                        duration: const Duration(milliseconds: 500),
                      );
                    }
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
