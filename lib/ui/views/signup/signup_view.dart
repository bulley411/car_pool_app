import 'package:car_pooling_app/ui/common/app_colors.dart';
import 'package:car_pooling_app/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_theme.dart';
import '../../common/custom_widgets.dart';
import 'signup_viewmodel.dart';

class SignupView extends StackedView<SignupViewModel> {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SignupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: kcVeryLightGrey,
        appBar: AppBar(),
        body: SafeArea(
            child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Container(
                    color: kcVeryLightGrey,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: header('Register', 'in less than a minute',
                          'assets/images/image1.png'),
                    ),
                  )),
              Expanded(
                  flex: 4,
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: kkWhite,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(29.0),
                      child: ListView(
                        children: [
                          verticalSpaceSmall,
                          fullNameField(),
                          verticalSpaceMedium,
                          emailField(),
                          verticalSpaceMedium,
                          phoneNumberField(),
                          verticalSpaceMedium,
                          const DropDownField(),
                          // verticalSpaceMassive,
                          verticalSpaceLarge,
                          // verticalSpaceSmall,
                          // verticalSpaceMedium,
                          const Center(
                              child: Text(
                            "We'll send verification code.",
                            style: TextStyle(color: kcLightGrey),
                          )),
                          verticalSpaceMedium,
                          DefaultButton(
                            text: 'Continue',
                            onPress: () {},
                          )
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        )));
  }

  InputField phoneNumberField() {
    return const InputField(
      labelText: 'Phone Number',
      obscuretext: false,
      hintText: 'Enter Your Phone Number',
      floatingLabelBehavior: FloatingLabelBehavior.always,
      textInputType: TextInputType.number,
    );
  }

  InputField emailField() {
    return const InputField(
      labelText: 'Email Address',
      obscuretext: false,
      hintText: 'Enter Your Email Address',
      floatingLabelBehavior: FloatingLabelBehavior.always,
      textInputType: TextInputType.emailAddress,
    );
  }

  InputField fullNameField() {
    return const InputField(
      labelText: 'Full Name',
      obscuretext: false,
      hintText: 'Enter Full Name',
      floatingLabelBehavior: FloatingLabelBehavior.always,
      textInputType: TextInputType.name,
    );
  }

  @override
  SignupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SignupViewModel();
}

class DropDownField extends StatefulWidget {
  const DropDownField({super.key});

  @override
  State<DropDownField> createState() => _DropDownFieldState();
}

class _DropDownFieldState extends State<DropDownField> {
  String dropdownValue = SignupViewModel.gender.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      inputDecorationTheme: inputDecorationTheme(),
      hintText: 'Select Your Gender',
      width: halfScreenWidth(context),
      // initialSelection: SignupViewModel.gender.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries:
          SignupViewModel.gender.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
