import 'package:flutter/material.dart';
import 'package:jam_re_store/pages/auth/forgot_password/forgot_password_email_page.dart';
import 'package:jam_re_store/pages/auth/forgot_password/forgot_password_page.dart';
import 'package:jam_re_store/pages/auth/otp_number/otp_number_page.dart';
import 'package:jam_re_store/pages/auth/otp/otp_page.dart';
import 'package:jam_re_store/pages/auth/sign_in/sign_in_page.dart';
import 'package:jam_re_store/pages/auth/sign_up/sign_up_page.dart';
import 'package:jam_re_store/pages/home/article_open_page.dart';
import 'package:jam_re_store/pages/home/edit_profile/components/settings.dart';
import 'package:jam_re_store/pages/home/edit_profile/edit_profile.dart';
import 'package:jam_re_store/pages/home/home_page.dart';
import 'package:jam_re_store/pages/home/profile/proflie.dart';
import 'package:jam_re_store/pages/welcome/welcome2_page.dart';
import 'package:jam_re_store/pages/welcome/welcome_page.dart';
import 'package:jam_re_store/routes/names.dart';

var routes = <String, WidgetBuilder>{
  NamesRoutes.signIn: (context) => const SignInPage(),
  NamesRoutes.forgotpasswordEmail: (context) => const forgotPasswordEmailPage(),
  NamesRoutes.forgotPassword: (context) => const forgotPasswordPage(),
  NamesRoutes.signUp: (context) => const SignUpPage(),
  NamesRoutes.home: (context) => HomePage(),
  NamesRoutes.editProfile: (context) => EditProfilePage(),
  NamesRoutes.profile: (context) => ProfilePage(),
  NamesRoutes.articleOpen: (context) => ArticleOpen(),
  NamesRoutes.settings: (context) => SettingsPage(),
  NamesRoutes.otp: (context) => const OtpPage(),
  NamesRoutes.otpNumber: (context) => OtpNumberPage(),
  NamesRoutes.welcome: (context) => const WelcomePage(),
  NamesRoutes.welcome2: (context) => const Welcome2Page(),
};
