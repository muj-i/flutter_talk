import 'package:flutter/material.dart';

class SettingOptionTile extends StatelessWidget {
  const SettingOptionTile({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
  });

  final IconData icon;
  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          radius: 22,
          backgroundColor: const Color(0xffF2F8F7),
          child: Icon(
            icon,
            size: 24,
            color: const Color(0xff797C7B),
          )),
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xff000E08)),
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            )
          : null,
    );
  }
}
