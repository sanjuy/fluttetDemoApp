// import 'package:flutter/material.dart';

const accBaseURL = "accounts.zoho.com";
const baseURL = "zohodms.solutions.zoho.com";

enum EndPoints {
  token,
  vehicle,
  profile,
}

extension CatExtension on EndPoints {
  String get value {
    switch (this) {
      case EndPoints.token:
        return '/oauth/v2/token';
      case EndPoints.vehicle:
        return '/crm/v2/Vehicles';
      case EndPoints.profile:
        return "";
      default:
        return "";
    }
  }
}
