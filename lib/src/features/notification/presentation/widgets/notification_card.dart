import 'package:flutter/material.dart';
import 'package:meeting_room/localization/l10n.dart';
import 'package:meeting_room/src/core/extensions/extensions.dart';
import 'package:meeting_room/src/core/themes/theme.dart';
import 'package:meeting_room/src/core/widgets/widgets.dart';

class NotificationCard extends StatelessWidget {
  NotificationCard({super.key, required this.text, required this.ago_time});
  DateTime ago_time;
  String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        height: 75,
        width: 358,
        child: PhysicalModel(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
          elevation: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 9, left: 8),
                child: SvgImage('assets/icons/tick-circle.svg'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 55,
                    width: 310,
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 10, right: 10),
                    child: Text(
                      text,
                      style: AppStyles.text12Px,
                    ),
                  ),
                  Text(
                    '${ago_time.hour}h ${ago_time.minute}m ago ',
                    style: AppStyles.text12Px.textGrey,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
