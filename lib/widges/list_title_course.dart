import 'package:flutter/material.dart';
import 'package:oline_learning_app/models/course_list.dart';
import 'package:oline_learning_app/utils/text_style.dart';

class ListTitalCourse extends StatelessWidget {
  final ListCourse listCourse;
  const ListTitalCourse({
    super.key,
    required this.listCourse,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ListTile(
      leading: Text(
        listCourse.leading,
        style: Style.listleading,
      ),
      title: Text(
        listCourse.titleheading,
        style: Style.lilttitle,
      ),
      subtitle: Row(
        children: [
          Text(
            listCourse.subtitle,
            style: Style.subtitle,
          ),
          SizedBox(
            width: width * 0.05,
          ),
          Icon(
            listCourse.icon,
            size: 15,
            color: listCourse.iconcolor,
          )
        ],
      ),
      trailing: CircleAvatar(
        child: Image(image: AssetImage(listCourse.image)),
      ),
    );
  }
}
