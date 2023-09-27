import 'package:device_apps/device_apps.dart';

class ShortcutAppsModel {
  String phone;
  String message;
  String camera;
  String setting;

  ShortcutAppsModel({required this.phone, required this.camera, required this.message, required this.setting});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['phone'] = this.phone;
    data['message'] = this.message;
    data['camera'] = this.camera;
    data['setting'] = this.setting;
    return data;
  }
}
