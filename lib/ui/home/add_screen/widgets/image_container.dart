import 'package:evently_app/providers/theme_provider.dart';
import 'package:evently_app/utils/app_colors.dart';
import 'package:evently_app/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ImageContainer extends StatelessWidget {
  final String imageLight;
  final String imageDark;

  const ImageContainer({
    super.key,
    required this.imageLight,
    required this.imageDark,
  });

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      margin: EdgeInsets.only(top: context.height * 0.01),
      width: double.infinity,
      height: context.height * 0.24,
      decoration: BoxDecoration(
        color: AppColors.mainDarkModeColor,
        border: Border.all(color: Theme.of(context).dividerColor, width: 1),
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(themeProvider.isDarkMode ? imageDark : imageLight),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
