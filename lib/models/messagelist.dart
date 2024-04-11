import 'package:oline_learning_app/models/messagem.dart';
import 'package:oline_learning_app/utils/test_data.dart';

List<Messagem> MessageList = [
  Messagem(
    con: false,
    online: TextData.online,
    time: TextData.time,
    paragraf: TextData.paragraf,
    name: TextData.name,
  ),
  Messagem(
    con: true,
    online: TextData.online,
    time: TextData.time,
    paragraf: TextData.paragraf2,
    name: TextData.name2,
  ),
  Messagem(
    con: false,
    online: TextData.online,
    time: TextData.time,
    paragraf: TextData.paragraf,
    name: TextData.name3,
  ),
  Messagem(
    con: true,
    online: TextData.online,
    time: TextData.time2,
    paragraf: TextData.paragraf,
    name: TextData.name,
  ),
  Messagem(
    con: false,
    online: TextData.online,
    time: TextData.time,
    paragraf: TextData.paragraf,
    name: TextData.name,
  ),
];
