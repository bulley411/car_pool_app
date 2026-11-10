import 'package:car_pooling_app/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

//Header
Row header(String title, String desc, String img) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Padding(
        padding: const EdgeInsets.all(32.0),
        child: RichText(
          text: TextSpan(
            text: '$title \n',
            style: const TextStyle(
                color: kcBackgroundColor,
                fontSize: 19,
                fontWeight: FontWeight.bold),
            children: <TextSpan>[
              TextSpan(
                  text: desc,
                  style: const TextStyle(
                    color: kcLightGrey,
                  )),
            ],
          ),
        ),
      ),
      Image.asset(
        img,
        width: 120,
        fit: BoxFit.contain,
      ),
    ],
  );
}

//Button
class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.onPress,
  }) : super(key: key);
  final String? text;
  final Function? onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight(context) * 0.08,
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          // foregroundColor: Colors.white,
          backgroundColor: kkPrimaryColor,
        ),
        onPressed: onPress as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: getResponsiveMassiveFontSize(context) * 1.5,
            fontWeight: FontWeight.bold,
            color: kkWhite,
          ),
        ),
      ),
    );
  }
}

//Textfields
class InputField extends StatelessWidget {
  final String? errorText;
  final bool obscuretext;
  final String? hintText;
  final TextInputType textInputType;
  final String labelText;
  final FloatingLabelBehavior? floatingLabelBehavior;
  const InputField({
    super.key,
    this.hintText,
    required this.textInputType,
    required this.obscuretext,
    this.errorText,
    required this.labelText,
    this.floatingLabelBehavior,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscuretext,

      // controller: controller,
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        floatingLabelBehavior: floatingLabelBehavior,
      ),
    );
  }
}

//textbutton
class DefaultTextButton extends StatelessWidget {
  final String? text;
  final Function? onPress;
  const DefaultTextButton({super.key, this.text, this.onPress});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress as void Function()?,
      child: Text(text!),
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith(getColor)),
    );
  }
}

Color getColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    // MaterialState.hovered,
    MaterialState.focused
    // MaterialState.pressed
  };
  if (states.any(interactiveStates.contains)) {
    return kkPrimaryColor;
  }
  return kkPrimaryColor;
}
