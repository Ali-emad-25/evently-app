import 'package:easy_localization/easy_localization.dart';
import 'package:evently_app/providers/theme_provider.dart';
import 'package:evently_app/ui/home/add_screen/widgets/app_bar_custom.dart';
import 'package:evently_app/ui/onboarding/widgets/main_btn.dart';
import 'package:evently_app/utils/app_assets.dart';
import 'package:evently_app/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBarCustom(text: 'forget_screen_title'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.width * 0.043),
        child: Column(
          spacing: context.height * 0.05,
          children: [
            SizedBox(height: context.height * 0.012),
            Image.asset(
              themeProvider.isDarkMode
                  ? AppAssets.forgetImageDark
                  : AppAssets.forgetImage,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            MainBtn(text: 'reset_password'.tr(), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
