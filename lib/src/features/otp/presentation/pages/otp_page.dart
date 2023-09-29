/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */
import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meeting_room/localization/l10n.dart';
import 'package:meeting_room/src/core/extensions/extensions.dart';
import 'package:meeting_room/src/core/themes/app_colors.dart';
import 'package:meeting_room/src/core/themes/app_styles.dart';
import 'package:meeting_room/src/core/widgets/custom_button.dart';
import 'package:meeting_room/src/features/auth/presentation/pages/login_page.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:meeting_room/src/features/otp/presentation/widgets/underline_style.dart';
import 'package:meeting_room/src/features/permissions/permissions.dart';

@RoutePage()
class OtpPage extends StatelessWidget {
  const OtpPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            10.verticalSpace,
            Container(
              alignment: Alignment.centerLeft,
              child: InkWell(
                  onTap: () => {Navigator.pop(context)},
                  child: const Icon(Icons.arrow_back)),
            ),
            28.verticalSpace,
            Text(
              l10n.welcomeBack,
              textAlign: TextAlign.left,
              style: text30PxSemiBold,
            ),
            25.verticalSpace,
            Text(
              l10n.otpText,
              textAlign: TextAlign.left,
              style: AppStyles.text16Px.black,
            ),
            5.verticalSpace,
            Text(
              'example@ebpearls.com',
              textAlign: TextAlign.left,
              style: AppStyles.text16Px.black,
            ),
            20.verticalSpace,
            Row(
              children: [
                Text(
                  l10n.notYourEmail,
                  textAlign: TextAlign.left,
                  style: AppStyles.text16Px.black,
                ),
                InkWell(
                  onTap: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LoginPage()))
                  },
                  child: Text(
                    l10n.edit,
                    textAlign: TextAlign.left,
                    style: text16pxUnderlinedPurple,
                  ),
                ),
                25.verticalSpace,
              ],
            ),
            20.verticalSpace,
            OtpTextField(
              numberOfFields: 5,
              borderColor: AppColors.purpleAppColor,
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Verification Code'),
                        content: Text('Code entered is $verificationCode'),
                      );
                    });
              }, // end onSubmit
            ),
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  l10n.didGetOtp,
                  textAlign: TextAlign.right,
                  style: AppStyles.text16Px.black,
                ),
                5.horizontalSpace,
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const PermissionsPage()));
                  },
                  child: Text(
                    l10n.resend,
                    textAlign: TextAlign.right,
                    style: text16pxUnderlinedPurple,
                  ),
                ),
              ],
            ),
            20.verticalSpace,
            CustomButton(
              label: l10n.resend,
              onPressed: () {},
              isDisabled: false,
              // loading: ,
            ),
          ],
        ),
      ),
    );
  }
}
