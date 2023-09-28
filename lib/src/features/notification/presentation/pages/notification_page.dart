/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */
import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:meeting_room/src/core/themes/theme.dart';
import 'package:meeting_room/src/features/notification/presentation/widgets/notification_card.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

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
              'Notification',
              style: AppStyles.text28PxSemiBold,
            ),
            const Divider(),
            5.verticalSpace,
            NotificationCard(
                text:
                    'Lorem ipsum is the notification text of printing and type setting industry',
                ago_time: DateTime.now()),
            NotificationCard(
                text:
                    'Lorem Lorem lorem lorem ipsum ipsum ipsum ipsum ipsum ipsum.',
                ago_time: DateTime.now()),
          ],
        ),
      ),
    );
  }
}
