import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../common/app_colors.dart';
import '../../common/custom_widgets.dart';
// import '../../common/ui_helpers.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: kkPrimaryColor,
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: kkPrimaryColor,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  child: Center(
                    child: ToggleSwitch(
                      animate: true,

                      curve: Curves.ease,
                      minWidth: double.infinity,
                      minHeight: 50.0,
                      cornerRadius: 20.0,
                      radiusStyle: true,
                      // activeBorders: [Border.all()],
                      // activeBgColors: [
                      //   [Colors.green[800]!],
                      //   [Colors.red[800]!]
                      // ],
                      activeBgColor: const [kkWhite],
                      activeFgColor: kcDarkGreyColor,
                      inactiveBgColor: const Color.fromARGB(100, 214, 212, 212),
                      inactiveFgColor: Colors.white,
                      initialLabelIndex: viewModel.activePageIndex,
                      totalSwitches: 2,
                      customTextStyles: const [
                        TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                      labels: const ['Plan a trip', 'Book a trip'],
                      // icons: [Icons.time_to_leave, Icons.people],
                      customIcons: const [
                        Icon(
                          Icons.time_to_leave,
                          color: kkPrimaryColor,
                        ),
                        Icon(
                          Icons.people,
                          color: kkPrimaryColor,
                        ),
                      ],
                      onToggle: viewModel.onToggle,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                    decoration: const BoxDecoration(
                        color: kkWhite,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    child: viewModel.pages[viewModel.activePageIndex]),
              )
              // Expanded(
              //     flex: 4,
              //     child: Container(
              //       color: kkPrimaryColor,
              //       child: Container(
              //         width: double.infinity,
              //         decoration: const BoxDecoration(
              //             color: kkWhite,
              //             borderRadius:
              //                 BorderRadius.vertical(top: Radius.circular(20))),
              //         child: Padding(
              //           padding: const EdgeInsets.all(29.0),
              //           child: ListView(
              //             children: [
              //               verticalSpaceMedium,
              //               fullNameField(),
              //               verticalSpaceMedium,
              //               emailField(),
              //               verticalSpaceMedium,
              //               phoneNumberField(),
              //               verticalSpaceMassive,
              //               verticalSpaceMedium,
              //               const Center(
              //                   child: Text(
              //                 "We'll send verification code.",
              //                 style: TextStyle(color: kcLightGrey),
              //               )),
              //               verticalSpaceMedium,
              //               DefaultButton(
              //                 text: 'Continue',
              //                 onPress: () {},
              //               )
              //             ],
              //           ),
              //         ),
              //       ),
              //     )),
            ]),
          ),
        ));
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
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
