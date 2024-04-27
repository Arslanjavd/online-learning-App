import 'package:flutter/material.dart';
import 'package:oline_learning_app/models/messagem.dart';

// ignore: must_be_immutable
class MessageFun extends StatelessWidget {
  final Messagem messagem;
  MessageFun({super.key, required this.messagem});

  bool? con;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5),
                        ),
                        color: Colors.greenAccent.withOpacity(0.5)),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      messagem.name,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(messagem.online),
                    )
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                ),
                Text(messagem.time)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 20,
                left: 10,
              ),
              child: Text(messagem.paragraf),
            ),
            if (messagem.con == true)
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.17,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.pink.withOpacity(0.2)),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
