import 'package:flutter/material.dart';

BottomNavigationBarItem buildBottomNavigationBarItem(icon, texto) {
  return BottomNavigationBarItem(
    icon: Icon(
      icon,
      color: Colors.black,
    ),
    title: Text(
      texto,
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
  );
}
