import 'package:draxex_flutter_template/draxex.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:weekly_planner/product/init/language/locale_keys.g.dart';

class CreateTask extends StatelessWidget {
  const CreateTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("tasdadadasdsadsadjsadhasjkdsahkdhasjdsah"),
        Text("tasdadadasdsadsadjsadhasjkdsahkdhasjdsah"),
        Text("tasdadadasdsadsadjsadhasjkdsahkdhasjdsah"),
        Text("tasdadadasdsadsadjsadhasjkdsahkdhasjdsah"),
        Text("tasdadadasdsadsadjsadhasjkdsahkdhasjdsah"),
        Text("tasdadadasdsadsadjsadhasjkdsahkdhasjdsah"),
        Text("tasdadadasdsadsadjsadhasjkdsahkdhasjdsah"),
        DraxexButton(
          onPressed: () => print("create task"),
          text: LocaleKeys.button_title_save.tr(),
        ),
      ],
    );
  }
}
