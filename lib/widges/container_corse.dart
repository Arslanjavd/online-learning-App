import 'package:flutter/material.dart';
import 'package:oline_learning_app/models/course_container_model.dart';

class ContainerCourse extends StatelessWidget {
  final CourseContainerModel courseContainerModel;
  const ContainerCourse({
    super.key,
    required this.courseContainerModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.14,
      width: MediaQuery.of(context).size.width * 9,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.03),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.16,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  courseContainerModel.heading,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                Row(
                  children: [
                    const Icon(Icons.person),
                    Text(
                      courseContainerModel.subtitle,
                      style: TextStyle(color: Colors.black.withOpacity(0.5)),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      courseContainerModel.price,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            color: Colors.red.withOpacity(0.3)),
                        child: Center(
                          child: Text(
                            courseContainerModel.hours,
                            style: const TextStyle(color: Colors.red),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
