import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import '../../common/custom_widgets.dart';
import '../../common/ui_helpers.dart';
import 'signin_viewmodel.dart';

class SigninView extends StackedView<SigninViewModel> {
  const SigninView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SigninViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcVeryLightGrey,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  color: kcVeryLightGrey,
                  height: screenHeight(context),
                  width: screenWidth(context),
                  child: Image.asset(
                    'assets/images/image1.png',
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: kkWhite,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  child: ListView(
                    children: <Widget>[
                      verticalSpaceSmall,
                      Padding(
                        padding: const EdgeInsets.all(29.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Get Started',
                              style: TextStyle(
                                  color: kcLightGrey,
                                  fontSize:
                                      getResponsiveMassiveFontSize(context) *
                                          1.4),
                            ),
                            verticalSpaceMedium,
                            phoneNumberField(),
                            verticalSpaceLarge,
                            DefaultButton(
                              text: 'Continue',
                              onPress: viewModel.navigateToSignUp,
                            ),
                            verticalSpaceMedium,
                            continueWithText(context)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: kkWhite,
                child: Container(
                  decoration: const BoxDecoration(
                      color: kkPrimaryColor,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/facebook.svg',
                        height: screenHeight(context) * 0.02,
                      ),
                      Text(
                        'Facebook',
                        style: TextStyle(
                          fontSize: getResponsiveMassiveFontSize(context) * 1.5,
                          fontWeight: FontWeight.w500,
                          color: kkWhite,
                        ),
                      ),
                      const VerticalDivider(
                        color: kkWhite,
                        indent: 35,
                        endIndent: 35,
                        width: 10,
                      ),
                      SvgPicture.asset(
                        'assets/icons/google.svg',
                        height: screenHeight(context) * 0.02,
                      ),
                      Text(
                        'Google',
                        style: TextStyle(
                          fontSize: getResponsiveMassiveFontSize(context) * 1.5,
                          fontWeight: FontWeight.w500,
                          color: kkWhite,
                        ),
                      )
                    ],
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Text continueWithText(BuildContext context) {
    return Text(
      'or Continue with',
      style: TextStyle(
          color: kcLightGrey,
          fontWeight: FontWeight.w400,
          fontSize: getResponsiveLargeFontSize(context) * 2),
    );
  }

  InputField phoneNumberField() {
    return const InputField(
      obscuretext: false,
      labelText: 'Phone',
      hintText: 'Enter Your Phone Number',
      floatingLabelBehavior: FloatingLabelBehavior.always,
      textInputType: TextInputType.phone,
    );
  }

  @override
  SigninViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SigninViewModel();
}
