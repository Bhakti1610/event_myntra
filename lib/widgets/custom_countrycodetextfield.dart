/*
// ignore_for_file: prefer_expression_function_bodies

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myco_flutter/core/theme/app_theme.dart';
import 'package:myco_flutter/core/theme/colors.dart';
import 'package:myco_flutter/core/utils/responsive.dart';
import 'package:myco_flutter/widgets/custom_dropdown_button.dart';
import 'package:myco_flutter/widgets/custom_text_field.dart';

class PhoneNumberField extends StatelessWidget {
  final String selectedCountry;
  final List<String> countries;
  final void Function(String?, int)? onCountryChanged;
  final TextEditingController phoneController;
  final Map<String, String> countryDialCodes;
  final Decoration? decoration;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final double? textFieldHeight;
  final double? textFieldWidth;

  const PhoneNumberField({
    super.key,
    required this.selectedCountry,
    required this.countries,
    required this.onCountryChanged,
    required this.phoneController,
    required this.countryDialCodes,
    this.decoration,
    this.hintText,
    this.hintTextStyle,
    this.textFieldHeight,
    this.textFieldWidth,
  });

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);
    // final textTheme = theme.textTheme;

    return Container(
      height: textFieldHeight,
      width: textFieldWidth,
      padding: const EdgeInsets.symmetric(horizontal: 7),
      decoration:
          decoration ??
          BoxDecoration(
            border: Border.all(color: AppColors.primary),
            borderRadius: BorderRadius.circular(10),
            color: AppColors.white,
          ),
      child: Row(
        children: [
          SizedBox(
            width: 85,
            height: 55,
            child: CustomPopupDropdownStyled<String>(
              // border: InputBorder.none,
              items: countries,
              border: Border.all(color: Colors.transparent),
              selectedItem: selectedCountry,
              itemToString: (val) => val,
              onChanged: onCountryChanged,
              height: 40,
              width: 70,
              hintTextStyle: TextStyle(
                fontSize: 14 * Responsive.getResponsiveText(context),
                fontWeight: FontWeight.w600,
              ),
              // hintTextStyle: AppTheme.lightTheme(context).textTheme.bodyMedium?.copyWith(
              //   color: AppColors.primary,
              //     ),
              // useRadioList: false,
            ),
          ),
          Text(
            countryDialCodes[selectedCountry] ?? '',
            style: TextStyle(
              color: AppTheme.getColor(context).outline,
              fontSize: 14 * Responsive.getResponsiveText(context),
              fontWeight: FontWeight.w600,
              // fontSize: AppTheme.lightTheme(context).textTheme.bodyMedium?.fontSize ,
            ),
          ),
          Expanded(
            child: MyCoTextfield(
              textAlignment: TextAlign.start,
              isSuffixIconOn: false,
              controller: phoneController,
              hintText: hintText ?? '1234567890',
              hintTextStyle:
                  hintTextStyle ??
                  TextStyle(
                    fontFamily: "Gilroy-Bold",
                    color: AppTheme.getColor(context).outline,
                    fontSize:
                        AppTheme.getTextStyle(context).bodyMedium?.fontSize ??
                        14.0 * Responsive.getResponsiveText(context),
                  ),
              textInputType: TextInputType.phone,
              inputFormater: [FilteringTextInputFormatter.digitsOnly],
              border: InputBorder.none,
            ),
          ),
        ],
      ),
    );
  }
}

//below given code is the example of the usage of the above code in ui

//  String selectedCountry = 'INA';
//   final TextEditingController phoneController = TextEditingController();
//   final Map<String, String> countryMap = {
//     'INA': '+62',
//     'USA': '+1',
//     'IND': '+91',
//   };
//    PhoneNumberField(
//                       selectedCountry: selectedCountry,
//                       countries: countryMap.keys.toList(),
//                       onCountryChanged: (value, index) {
//                         if (value != null) {
//                           setState(() {
//                             selectedCountry = value;
//                           });
//                         }
//                       },
//                       countryDialCodes: countryMap,
//                       phoneController: phoneController),
*/
