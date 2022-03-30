
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:organico/pages/forgot_password.dart';
import 'package:organico/pages/new_registration.dart';
import 'package:organico/pages/phone_otp.dart';
import 'package:organico/pages/registr.dart';

class RouteHelper {
  static generate(RouteSettings settings) {
    Object? args = settings.arguments;
    switch (settings.name) {
      case '/registr':
        return MaterialPageRoute(
          builder: (context) => const Registration(),
        );
    }
    switch (settings.name) {
      case '/newregistr':
        return MaterialPageRoute(
          builder: (context) =>  NewRegistration(),
        );
    }
    switch (settings.name) {
      case '/forgot':
        return MaterialPageRoute(
          builder: (context) =>  Forgot()
        );
    }
    switch (settings.name) {
      case '/phoneOTP':
        return MaterialPageRoute(
          builder: (context) =>  PhoneOTP()
        );
    }
  }
}
