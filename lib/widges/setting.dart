import 'package:flutter/material.dart';
import 'package:oline_learning_app/models/settingm.dart';
import 'package:oline_learning_app/utils/text_style.dart';

class SettingList extends StatelessWidget {
  final Settingm settingm;
  const SettingList({super.key, required this.settingm});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            settingm.name,
            style: Style.lilttitle,
          ),
          IconButton(
              onPressed: settingm.onpress,
              icon: ImageIcon(
                AssetImage(
                  settingm.image,
                ),
                size: 16,
              ))
        ],
      ),
    );
  }
}
