import '../models/chooseinterestchipview2_item_model.dart';
import 'package:edifyme/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Chooseinterestchipview2ItemWidget extends StatelessWidget {
  Chooseinterestchipview2ItemWidget(
    this.chooseinterestchipview2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Chooseinterestchipview2ItemModel chooseinterestchipview2ItemModelObj;

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
            chooseinterestchipview2ItemModelObj.healing!.value,
            style: TextStyle(
              color: appTheme.whiteA700,
              fontSize: 18.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          selected:
              (chooseinterestchipview2ItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: theme.colorScheme.primary,
          shape:
              (chooseinterestchipview2ItemModelObj.isSelected?.value ?? false)
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
            chooseinterestchipview2ItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
