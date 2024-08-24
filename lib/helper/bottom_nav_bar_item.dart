import 'package:flutter/material.dart';

BottomNavigationBarItem buildBottomNavBarItem(
    {required String label, required IconData icon}) {
  return BottomNavigationBarItem(
    label: label,
    icon: Icon(
      icon,
    ),
  );
}
