/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */
import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:meeting_room/localization/l10n.dart';
import 'package:meeting_room/src/core/extensions/extensions.dart';
import 'package:meeting_room/src/core/themes/theme.dart';
import 'package:meeting_room/src/core/widgets/widgets.dart';
import 'package:meeting_room/src/features/notification/notification.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.verticalSpace,
            IconButton(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.zero,
                onPressed: () => {Navigator.pop(context)},
                icon: const Icon(Icons.arrow_back)),
            10.verticalSpace,
            Text(
              l10n.settings,
              style: AppStyles.text28PxSemiBold,
            ),
            const Divider(),
            5.verticalSpace,
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: SvgImage('assets/icons/profile.svg'),
              dense: true,
              title: Text(l10n.profile),
              trailing: IconButton(
                icon: const Icon(
                  Icons.chevron_right,
                  color: AppColors.textGrey,
                ),
                onPressed: (() {}),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              dense: true,
              leading: SvgImage('assets/icons/notification.svg'),
              title: Text(l10n.notifications),
              trailing: IconButton(
                icon: const Icon(
                  Icons.chevron_right,
                  color: AppColors.textGrey,
                ),
                onPressed: (() {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const NotificationPage()));
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
