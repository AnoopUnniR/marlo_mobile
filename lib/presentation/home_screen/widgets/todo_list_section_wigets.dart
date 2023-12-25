import 'package:flutter/material.dart';
import 'package:marlo_app_mmobile/core/constants/text_styles.dart';
import 'package:marlo_app_mmobile/core/constants/widgets.dart';
import 'todo_list_widget.dart';

class TodoListSectionWigets extends StatelessWidget {
  const TodoListSectionWigets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "To do 4 ",
          style: homeScreenHeadingStyle,
        ),
        sbh10,
        SizedBox(
          height: 130,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              TodoListWidget(
                  image: "assets/icons/Vector.png",
                  colors: [
                    Color.fromARGB(255, 255, 255, 255),
                    Color.fromARGB(255, 180, 161, 213),
                  ],
                  data: "Verify your business documents"),
              TodoListWidget(
                  image: "assets/icons/Vector1.png",
                  colors: [
                    Color.fromARGB(255, 254, 254, 254),
                    Color.fromARGB(255, 210, 196, 175),
                  ],
                  data: "Verify your identity"),
              TodoListWidget(
                  image: "assets/icons/Vector2.png",
                  colors: [
                    Color.fromARGB(255, 247, 250, 251),
                    Color.fromARGB(255, 147, 200, 211)
                  ],
                  data: "Open a marlo business account"),
              TodoListWidget(
                  image: "assets/icons/Vector3.png",
                  colors: [
                    Color.fromARGB(255, 226, 252, 230),
                    Color.fromARGB(255, 151, 218, 162)
                  ],
                  data: "Get prequalified"),
            ],
          ),
        )
      ],
    );
  }
}
