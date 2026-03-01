import 'package:aayushchaube/themes/custom_color_extension.dart';
import 'package:aayushchaube/themes/custom_fonts.dart';
import 'package:aayushchaube/themes/custom_themes.dart';
import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final heroBackgroundColor =
        Theme.of(context).extension<CustomColorExtension>()?.heroBackground ??
        CustomThemes.accentColor;

    return Stack(
      children: [
        SizedBox(
          height: 820.6,
          width: double.infinity,
          // padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  color: heroBackgroundColor,
                  child: Column(
                    children: [
                      // Profile image
                      Container(
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(150),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(150),
                          child: Container(
                            color: Colors.grey,
                            child: const Icon(
                              Icons.person,
                              size: 120,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      // Profile card
                      Container(
                        width: 320,
                        padding: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Aayush\nChaube', // Replace with your name
                              style: CustomFonts.font4.copyWith(
                                color: CustomThemes.textColor,
                                height: 1.2,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 12),
                            Container(
                              height: 3,
                              width: 40,
                              color: CustomThemes.primaryColor,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'FLUTTER DEVELOPER', // Replace with your title
                              style: CustomFonts.font10.copyWith(
                                color: CustomThemes.textColor.withValues(
                                  alpha: 0.7,
                                ),
                                letterSpacing: 2,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 30),
                            // Social icons
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _socialIcon(Icons.facebook),
                                _socialIcon(Icons.alternate_email),
                                _socialIcon(Icons.link),
                                _socialIcon(Icons.camera_alt),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // const SizedBox(width: 60),
              Expanded(
                flex: 6,
                child: Container(
                  color: CustomThemes.backgroundColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hello',
                        style: CustomFonts.font0.copyWith(
                          color: CustomThemes.textColor,
                          fontSize: 120,
                          fontWeight: FontWeight.bold,
                          height: 0.9,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Here\'s who I am & what I do',
                        style: CustomFonts.font7.copyWith(
                          color: CustomThemes.textColor,
                          fontSize: 24,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('RESUME'),
                          ),
                          const SizedBox(width: 20),
                          OutlinedButton(
                            onPressed: () {},
                            child: const Text('PROJECTS'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _socialIcon(IconData icon) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Icon(
        icon,
        size: 20,
        color: CustomThemes.textColor.withValues(alpha: 0.7),
      ),
    );
  }
}
