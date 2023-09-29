/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */
import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meeting_room/localization/l10n.dart';
import 'package:meeting_room/src/core/extensions/extensions.dart';
import 'package:meeting_room/src/core/themes/app_colors.dart';
import 'package:meeting_room/src/core/themes/app_styles.dart';
import 'package:meeting_room/src/core/widgets/widgets.dart';
import 'package:meeting_room/src/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:meeting_room/src/features/permissions/presentation/widgets/permission_duo.dart';

@RoutePage()
class PermissionsPage extends StatelessWidget {
  const PermissionsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: Column(
            children: [
              110.verticalSpace,
              SvgPicture.asset('assets/icons/purple_tick.svg'),
              Text(
                l10n.allowPermission,
                style: AppStyles.text24PxBold,
              ),
              8.verticalSpace,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  textAlign: TextAlign.center,
                  l10n.permissionInfo,
                  style: AppStyles.text14PxMedium,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: PhysicalModel(
                  color: const Color.fromARGB(255, 252, 251, 251),
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        PermissionDuo(text: l10n.notifications),
                        PermissionDuo(text: l10n.camera),
                        PermissionDuo(text: l10n.location),
                        PermissionDuo(text: l10n.googleCalendar),
                      ],
                    ),
                  ),
                ),
              ),
              20.verticalSpace,
              CustomButton(
                label: l10n.next,
                onPressed: () {},
                fullWidth: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
