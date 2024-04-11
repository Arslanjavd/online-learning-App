import 'package:flutter/material.dart';
import 'package:oline_learning_app/modules/message1/Message1.dart';
import 'package:oline_learning_app/modules/notifiaction/Notification.dart';
import 'package:oline_learning_app/utils/test_data.dart';
import 'package:oline_learning_app/utils/text_style.dart';

class Meassage extends StatelessWidget {
  const Meassage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 10, left: 20),
                child: Text(
                  TextData.not,
                  style: Style.numerous,
                ),
              ),
              TabBar(
                  indicatorColor: Colors.blue,
                  dividerColor: Colors.transparent,
                  tabs: [
                    Text(TextData.mes, style: Style.topbar),
                    Text(TextData.not, style: Style.topbar)
                  ]),
              const Expanded(
                  child: TabBarView(children: [Message1(), Notifiaction()]))
            ],
          ),
        ),
      ),
    );
  }
}
