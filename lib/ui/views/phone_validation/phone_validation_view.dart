import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import '../../common/ui_helpers.dart';
import 'components/otp_input.dart';
import 'phone_validation_viewmodel.dart';

class PhoneValidationView extends StackedView<PhoneValidationViewModel> {
  const PhoneValidationView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PhoneValidationViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: kkWhite,
        appBar: AppBar(
          backgroundColor: kkWhite,
        ),
        body: const Body());
  }

  @override
  PhoneValidationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PhoneValidationViewModel();
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          verticalSpaceLarge,
          Text(
            'Please enter code',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: getResponsiveLargeFontSize(context) * 2.5),
          ),
          verticalSpaceSmall,
          Text(
              'A verification code has been sent to your phone number 07012****09',
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: kcMediumGrey,
                  fontSize: getResponsiveMediumFontSize(context) * 2)),
          verticalSpaceMedium,
          const OTPPage(),
          verticalSpaceSmall,
        ],
      ),
    );
  }
}
