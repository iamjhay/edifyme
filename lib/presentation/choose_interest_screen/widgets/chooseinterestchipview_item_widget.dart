import '../models/chooseinterestchipview_item_model.dart';
import 'package:edifyme/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChooseinterestchipviewItemWidget extends StatelessWidget {
  ChooseinterestchipviewItemWidget(
    this.chooseinterestchipviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChooseinterestchipviewItemModel chooseinterestchipviewItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 14.v,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            chooseinterestchipviewItemModelObj.salvation!.value,
            style: TextStyle(
              color: appTheme.whiteA700,
              fontSize: 18.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          selected:
              (chooseinterestchipviewItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: theme.colorScheme.primary,
          shape: (chooseinterestchipviewItemModelObj.isSelected?.value ?? false)
              ? RoundedRectangleBorder(
                  side: BorderSide(
                    color: theme.colorScheme.primary,
                    width: 2.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    25.h,
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide(
                    color: theme.colorScheme.primary,
                    width: 2.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    25.h,
                  ),
                ),
          onSelected: (value) {
            chooseinterestchipviewItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
