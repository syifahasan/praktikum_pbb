import 'package:flutter/material.dart';
class TabItem extends StatelessWidget {
  const TabItem(this.icon, this.active);

  final bool active;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(13),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: active == true ? Colors.black : Colors.white,
            ),
          ),
        ),
        child: Icon(icon),
      ),
    );
  }
}