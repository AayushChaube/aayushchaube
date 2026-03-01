import 'package:aayushchaube/themes/custom_color_extension.dart';
import 'package:aayushchaube/themes/custom_fonts.dart';
import 'package:aayushchaube/themes/custom_themes.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final CustomColorExtension? customColorExtension = Theme.of(
      context,
    ).extension<CustomColorExtension>();

    return SizedBox(
      height: 820.6,
      width: double.infinity,
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  color:
                      customColorExtension?.heroBackground ??
                      CustomThemes.accentColor,
                ),
                // child: Container(
                //   width: 320,
                //   padding: const EdgeInsets.all(30),
                //   decoration: BoxDecoration(
                //     color: const Color(0xFFF5F3F0), // Light beige background
                //     borderRadius: BorderRadius.circular(8),
                //   ),
                //   child: Column(
                //     children: [
                //       Text(
                //         'Aayush\nChaube',
                //         style: CustomFonts.font4.copyWith(
                //           color: CustomThemes.textColor,
                //           height: 1.2,
                //         ),
                //         textAlign: TextAlign.center,
                //       ),
                //       const SizedBox(height: 12),
                //       Container(
                //         height: 3,
                //         width: 40,
                //         color: CustomThemes.primaryColor,
                //       ),
                //       const SizedBox(height: 20),
                //       Text(
                //         'FLUTTER DEVELOPER',
                //         style: CustomFonts.font10.copyWith(
                //           color: CustomThemes.textColor.withValues(alpha: 0.7),
                //           letterSpacing: 2,
                //           fontWeight: FontWeight.w500,
                //         ),
                //         textAlign: TextAlign.center,
                //       ),
                //       const SizedBox(height: 30),
                //       // Social icons
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           _socialIcon(Icons.facebook),
                //           _socialIcon(Icons.alternate_email),
                //           _socialIcon(Icons.link),
                //           _socialIcon(Icons.camera_alt),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
              ),
              // const SizedBox(width: 60),
              Expanded(
                flex: 6,
                child: Container(color: CustomThemes.backgroundColor),
                // child: Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     // Two column layout for text
                //     Row(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Expanded(
                //           child: Container(
                //             padding: const EdgeInsets.only(right: 20),
                //             child: Column(
                //               children: [
                //                 Container(
                //                   height: 2,
                //                   color: CustomThemes.primaryColor,
                //                   margin: const EdgeInsets.only(bottom: 20),
                //                 ),
                //                 Text(
                //                   'I\'m a paragraph. Click here to add your own text and edit me. It\'s easy. Just click "Edit Text" or double click me to add your own content and make changes to the font.',
                //                   style: CustomFonts.font7.copyWith(
                //                     color: CustomThemes.textColor,
                //                     height: 1.6,
                //                   ),
                //                 ),
                //                 const SizedBox(height: 20),
                //                 Text(
                //                   'I\'m a great place for you to tell a story and let your users know a little more about you.',
                //                   style: CustomFonts.font7.copyWith(
                //                     color: CustomThemes.textColor,
                //                     height: 1.6,
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ),
                //         Expanded(
                //           child: Container(
                //             padding: const EdgeInsets.only(left: 20),
                //             child: Column(
                //               children: [
                //                 Container(
                //                   height: 2,
                //                   color: CustomThemes.primaryColor,
                //                   margin: const EdgeInsets.only(bottom: 20),
                //                 ),
                //                 Text(
                //                   'I\'m a paragraph. Click here to add your own text and edit me. It\'s easy. Just click "Edit Text" or double click me to add your own content and make changes to the font.',
                //                   style: CustomFonts.font7.copyWith(
                //                     color: CustomThemes.textColor,
                //                     height: 1.6,
                //                   ),
                //                 ),
                //                 const SizedBox(height: 20),
                //                 Text(
                //                   'I\'m a great place for you to tell a story and let your users know a little more about you.',
                //                   style: CustomFonts.font7.copyWith(
                //                     color: CustomThemes.textColor,
                //                     height: 1.6,
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ],
                // ),
              ),
            ],
          ),
          // Profile card and desc. text
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 5,
                child: Card(
                  child: Container(
                    color:
                        customColorExtension?.profileCardBackground ??
                        CustomThemes.lightColorScheme.secondaryContainer,
                    // child: Column(
                    //   children: [
                    //     Container(
                    //       color: ,
                    //     ),
                    //   ],
                    // ),
                    height: 525.8,
                    width: 375,
                  ),
                ),
              ),
              Flexible(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150.4,
                      margin: EdgeInsets.only(bottom: 1, top: 94),
                      width: 485,
                      child: Text(
                        'Hello',
                        overflow: TextOverflow.clip,
                        style: CustomFonts.font0.copyWith(
                          color: CustomThemes.textColor,
                          fontSize: 100,
                          height: 1.2,
                        ),
                        textAlign: TextAlign.start,
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                    Container(
                      height: 35,
                      margin: EdgeInsets.only(bottom: 38),
                      width: 485,
                      child: Text(
                        'Here\'s who I am & what I do',
                        overflow: TextOverflow.clip,
                        style: CustomFonts.font5.copyWith(
                          color: CustomThemes.textColor,
                          height: 1.2,
                        ),
                        textAlign: TextAlign.start,
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                    SizedBox(
                      height: 35,
                      width: 130,
                      // child: Row(
                      //   mainAxisSize: MainAxisSize.max,
                      //   children: [
                      //     ElevatedButton(
                      //       onPressed: () {},
                      //       child: const Text('RESUME'),
                      //     ),
                      //     const SizedBox(width: 20),
                      //     OutlinedButton(
                      //       onPressed: () {},
                      //       child: const Text('PROJECTS'),
                      //     ),
                      //   ],
                      // ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Widget _socialIcon(IconData icon) {
  //   return Container(
  //     margin: const EdgeInsets.symmetric(horizontal: 8),
  //     child: Icon(
  //       icon,
  //       size: 20,
  //       color: CustomThemes.textColor.withValues(alpha: 0.7),
  //     ),
  //   );
  // }
}
