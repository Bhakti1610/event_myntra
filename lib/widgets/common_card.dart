/*
import 'package:flutter/material.dart';
import 'package:myco_flutter/core/theme/app_theme.dart';
import 'package:myco_flutter/core/utils/responsive.dart';
import 'package:myco_flutter/widgets/custom_myco_button/custom_myco_button.dart';
import 'package:myco_flutter/widgets/custom_text.dart';

class CommonCard extends StatelessWidget {
  final String title;
  final String? subTitle;
  final String? secondTitle;
  final bool isButton;
  final String buttonText;
  final Widget bottomWidget;
  final void Function()? onTap;
  final double? headerHeight;
  final double? borderRadius;
  final EdgeInsetsGeometry? headerPadding;
  final Color? headerColor;
  final Color? borderColor;
  final bool? showHeaderPrefixIcon;
  final String? headerPrefixIcon;
  final Color? headerPrefixIconColor;
  final Widget? suffixIcon;
  final double? headerPrefixIconHeight;
  final double? headerPrefixIconWidth;
  final bool? showBlackShadowInChild;
  final Widget? subTitleIcon;
  const CommonCard({
    required this.title,
    required this.bottomWidget,
    this.isButton = false,
    this.buttonText = '',
    this.onTap,
    this.headerHeight,
    super.key,
    this.borderColor,
    this.headerPadding,
    this.showHeaderPrefixIcon,
    this.headerPrefixIcon,
    this.headerPrefixIconColor,
    this.subTitle,
    this.secondTitle,
    this.borderRadius,
    this.headerColor,
    this.suffixIcon,
    this.headerPrefixIconHeight,
    this.headerPrefixIconWidth,
    this.showBlackShadowInChild,
    this.subTitleIcon,
  });

  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
        (borderRadius ?? 12) * Responsive.getResponsive(context),
      ),
      border: Border.all(
        color: borderColor ?? AppTheme.getColor(context).outline,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Header
        Container(
          height: headerHeight, //?? 0.06 * Responsive.getHeight(context),
          padding:
              headerPadding ??
              EdgeInsets.all(10 * Responsive.getResponsive(context)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(
                (borderRadius ?? 12) * Responsive.getResponsive(context) - 1.0,
              ),
            ),
            boxShadow: [
              if (showBlackShadowInChild == true)
                const BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 2),
                  blurRadius: 4,
                ),
              BoxShadow(
                color:
                    headerColor?.withAlpha(200) ??
                    AppTheme.getColor(context).secondary.withAlpha(180),
              ),
              BoxShadow(
                color: headerColor ?? AppTheme.getColor(context).secondary,
              offset: const Offset(1, 4),
                    spreadRadius: -6.0,
                    blurRadius: 6.0,
              ),
            ],
          ),
          child: Row(
            children: [
              if (showHeaderPrefixIcon == true)
                Image.asset(
                  headerPrefixIcon ?? 'assets/take_order/profile-circle.png',
                  // height: headerPrefixIconHeight ?? 0.1 * Responsive.getHeight(context),
                  width:
                      headerPrefixIconWidth ??
                      0.06 * Responsive.getWidth(context),
                  color: headerPrefixIconColor,
                ),
              if (showHeaderPrefixIcon == true)
                SizedBox(width: 0.02 * Responsive.getWidth(context)),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      isKey: true,
                      title,
                      color: AppTheme.getColor(context).onPrimary,
                      fontSize: 18 * Responsive.getResponsiveText(context),
                      fontWeight: FontWeight.bold,
                    ),
                    if (secondTitle != null)
                      CustomText(
                        isKey: true,
                        '$secondTitle',
                        color: AppTheme.getColor(context).onPrimary,
                        fontSize: 18 * Responsive.getResponsiveText(context),
                        fontWeight: FontWeight.bold,
                      ),
                    if (subTitle != null)
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (subTitleIcon != null)
                            subTitleIcon ?? const SizedBox.shrink(),
                          if (subTitleIcon != null)
                            SizedBox(
                              width: 0.01 * Responsive.getWidth(context),
                            ),

                          Expanded(
                            child: CustomText(
                              isKey: true,
                              '$subTitle',
                              color: AppTheme.getColor(context).onPrimary,
                              fontSize:
                                  15 * Responsive.getResponsiveText(context),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
              if (isButton == true)
                SizedBox(width: 0.02 * Responsive.getWidth(context)),

              if (isButton == true)
                MyCoButton(
                  onTap: onTap,
                  title: buttonText,
                  textStyle: TextStyle(
                    fontSize: 13 * Responsive.getResponsiveText(context),
                    color: AppTheme.getColor(context).onPrimary,
                  ),
                  width: 0.16 * Responsive.getWidth(context),
                  boarderRadius: 30 * Responsive.getResponsive(context),
                  height: 0.03 * Responsive.getHeight(context),
                  isShadowBottomLeft: true,
                ),
              if (suffixIcon != null) suffixIcon ?? const SizedBox.shrink(),
            ],
          ),
        ),
        bottomWidget,
      ],
    ),
  );
}
*/
