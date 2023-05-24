// ignore_for_file: todo

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  // Buat Simpan Session
  final box = GetStorage();
  RxString uid = "".obs;
  RxBool session = false.obs;
  RxInt role = 0.obs;

  void setPref(String uid, bool session, int role) async {
    box.write('uid', uid);
    box.write('session', session);
    box.write('role', role);

    debugPrint("Uid: $uid\nSession: $session\nRole: $role");
  }

  void getPref() async {
    uid(box.read('uid'));
    session(box.read('session'));
    role(box.read('role'));

    debugPrint("Uid: $uid\nSession: $session\nRole: $role");
  }
}
