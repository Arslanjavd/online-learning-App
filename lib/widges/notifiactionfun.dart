import 'package:flutter/material.dart';
import 'package:oline_learning_app/models/notifiactionm.dart';

class NotificationFun extends StatelessWidget {
  final Notificationm notifiactionm;
  const NotificationFun({super.key, required this.notifiactionm});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.15,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  color: notifiactionm.boxcolor),
              child: Icon(
                notifiactionm.icon,
                size: 26,
                color: notifiactionm.iconcolor,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                notifiactionm.heading,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.access_time_filled_sharp,
                    size: 15,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      notifiactionm.online12,
                      style: const TextStyle(fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
