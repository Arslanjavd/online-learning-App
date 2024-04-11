import 'package:flutter/material.dart';
import 'package:oline_learning_app/models/messagelist.dart';
import 'package:oline_learning_app/widges/messagefun.dart';

class Message1 extends StatelessWidget {
  const Message1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return MessageFun(messagem: MessageList[index]);
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
