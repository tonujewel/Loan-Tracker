import 'package:flutter/material.dart';

import '../AppStyle/app_style.dart';

class CustomTexfield extends StatelessWidget {
  const CustomTexfield({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        print(value);
      },
      // controller: _textFieldController,
      decoration: const InputDecoration(
          hintText: "",
          enabledBorder: AppStyle.outlineBorder,
          border: AppStyle.outlineBorder),
    );
  }
}