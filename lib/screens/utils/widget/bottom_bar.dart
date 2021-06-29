import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget bottomBar() {
  return BottomNavigationBar(
    selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
    unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
    selectedItemColor: Colors.red,
    type: BottomNavigationBarType.fixed,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home_rounded),
        label: 'Trang chủ',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.stars_rounded),
        label: 'Đặc quyền',
      ),
      BottomNavigationBarItem(
        tooltip: "QR code",
        icon: Icon(
          Icons.camera,
          color: Colors.transparent,
          size: 0,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.message_rounded),
        label: 'Hộp thư',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.manage_accounts_rounded),
        label: 'Tài khoản',
      ),
    ],
  );
}
