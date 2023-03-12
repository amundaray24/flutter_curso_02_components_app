import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  
  final String tittle;
  final String route;
  final IconData icon;
  final Widget screen;

  MenuOption({
    required this.tittle, 
    required this.route, 
    required this.icon, 
    required this.screen
  });

}