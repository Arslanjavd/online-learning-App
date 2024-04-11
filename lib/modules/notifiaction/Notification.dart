import 'package:flutter/material.dart';
import 'package:oline_learning_app/models/notifcationlist.dart';
import 'package:oline_learning_app/widges/notifiactionfun.dart';

class Notifiaction extends StatelessWidget {
  const Notifiaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return NotificationFun(
                      notifiactionm: notificationlist[index]);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
