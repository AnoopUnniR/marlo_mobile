import 'package:flutter/material.dart';
import 'package:marlo_app_mmobile/application/filtered/filter_screen_bloc.dart';
import 'package:marlo_app_mmobile/core/constants/widgets.dart';


final TextEditingController minimumController = TextEditingController();
final TextEditingController maximumController = TextEditingController();

class AmountChoiceWidget extends StatelessWidget {
  const AmountChoiceWidget({super.key, required this.state});
  final FilterScreenState state;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        textFieldWidget(hint: "Minimum", controller: minimumController),
        sbw20,
        textFieldWidget(hint: "Maximum", controller: maximumController),
      ],
    );
  }

  Expanded textFieldWidget(
      {required String hint, required TextEditingController controller}) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(5),
        height: 70,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              hint,
              style: const TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 30,
              child: TextField(
                controller: controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
