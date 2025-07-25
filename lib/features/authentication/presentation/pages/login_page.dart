import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/responsive.dart';
import '../../../../widgets/custom_bottom_nav_bar.dart';
import '../../../../widgets/custom_text.dart';
import '../../../../widgets/custom_text_field_new.dart';
import '../../../../core/theme/colors.dart';
import '../../../dashboard/presentation/pages/dashboard_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final emailOrPhoneController = TextEditingController();
  final passwordController = TextEditingController();

  void _submit() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const MainBottomNavPage()),
      );
    }
  }


  @override
  void dispose() {
    emailOrPhoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isTablet = MediaQuery.of(context).size.width > 600;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: isTablet ? 80 : 24,
              vertical: isTablet ? 60 : 40,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Logo (placeholder)
                  Container(
                    height: isTablet ? 160 : 100,
                    width: isTablet ? 160 : 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.eventCyan,
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 60,
                      color: AppColors.primary,
                    ),
                  ),

                  SizedBox(height: 0.05 * Responsive.getHeight(context)),

                  // Email or Phone Field
                  NewTextField(
                    label: "Email or Phone",
                    hintText: "Enter email or phone",
                    isRequired: true,
                    keyboardType: TextInputType.emailAddress,
                    controller: emailOrPhoneController,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Email or phone is required";
                      }
                      final emailRegex = RegExp(r'^\S+@\S+\.\S+$');
                      final phoneRegex = RegExp(r'^[6-9]\d{9}$');

                      if (value.contains(RegExp(r'[A-Za-z]'))) {
                        if (!emailRegex.hasMatch(value)) {
                          return "Please enter a valid email address";
                        }
                      } else {
                        if (!phoneRegex.hasMatch(value)) {
                          return "Please enter a 10-digit valid phone number";
                        }
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 0.02 * Responsive.getHeight(context)),

                  // Password Field
                  NewTextField(
                    label: "Password",
                    hintText: "Enter your password",
                    isRequired: true,
                    maxLines: 1,
                    controller: passwordController,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Password is required";
                      }
                      if (value.length < 6) {
                        return "Minimum 6 characters required";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 0.015 * Responsive.getHeight(context)),

                  // Forgot Password
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        // TODO: Navigate to Forgot Password screen
                      },
                      child: CustomText(
                        'Forgot password?',
                        fontSize: 14 * Responsive.getResponsiveText(context),
                        fontWeight: FontWeight.w600,
                        color: AppColors.secondary,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),

                  SizedBox(height: 0.01 * Responsive.getHeight(context)),

                  // Submit Button
                  SizedBox(
                    width: double.infinity,
                    height: 48 * Responsive.getResponsive(context),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: _submit,
                      child: CustomText(
                        'Login',
                        fontSize: 16 * Responsive.getResponsiveText(context),
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // Optional extra usage of colors
                  CustomText(
                    "Need help? Contact support.",
                    color: AppColors.textGray,
                    fontSize: 13 * Responsive.getResponsiveText(context),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
