import 'package:car_pooling_app/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import '../../common/custom_widgets.dart';
import 'more_viewmodel.dart';

class MoreView extends StackedView<MoreViewModel> {
  const MoreView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MoreViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          // title: Text(         ),
        ),
        body: SafeArea(
          child: SizedBox(
              width: double.infinity,
              child: Column(children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Container(
                      color: kcVeryLightGrey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: header('Abdulsalam Abdulrahman', 'Stackbase',
                            'assets/images/image1.png'),
                      ),
                    )),
                Expanded(
                  // flex: 1,
                  child: Container(
                    width: double.infinity,
                    color: kcVeryLightGrey,
                    child: GestureDetector(
                      onTap: () => viewModel.navigateToWallet(),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: kkPrimaryColor,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20))),
                        child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.stretch,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                // padding: EdgeInsets.all(20),
                                flex: 1,
                                child: Icon(
                                  Icons.account_balance_wallet,
                                  color: kkWhite,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Wallet',
                                      style: TextStyle(
                                          color: kkWhite,
                                          fontWeight: FontWeight.w400,
                                          fontSize: getResponsiveLargeFontSize(
                                                  context) *
                                              1.8),
                                    ),
                                    verticalSpaceSmall,
                                    Text(
                                      'Quick Payments',
                                      style: TextStyle(
                                          color: kkWhite,
                                          fontWeight: FontWeight.w400,
                                          fontSize: getResponsiveLargeFontSize(
                                                  context) *
                                              1.8),
                                    )
                                  ],
                                ),
                              ),
                              Text('N5,000.00',
                                  style: TextStyle(
                                      color: kkWhite,
                                      fontWeight: FontWeight.w400,
                                      fontSize:
                                          getResponsiveLargeFontSize(context) *
                                              1.8)),
                              horizontalSpaceSmall,
                              const Icon(Icons.navigate_next, color: kkWhite),
                              horizontalSpaceSmall,
                            ]),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    color: kkPrimaryColor,
                    child: Container(
                        decoration: const BoxDecoration(
                            color: kkWhite,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: ListView.builder(
                              itemCount: viewModel.listTileNames.length,
                              itemBuilder: (BuildContext context, int index) {
                                return ListTile(
                                  iconColor: kkPrimaryColor,
                                  leading: viewModel.listTileNames[index]
                                      ['icon'],
                                  title: Text(
                                    viewModel.listTileNames[index]['title'],
                                    style: TextStyle(
                                        fontSize: getResponsiveMediumFontSize(
                                                context) *
                                            2.4),
                                  ),
                                  subtitle: Text(
                                      viewModel.listTileNames[index]
                                          ['subtitle'],
                                      style: TextStyle(
                                          fontSize: getResponsiveSmallFontSize(
                                                  context) *
                                              2.4)),
                                );
                              }),
                        )),
                  ),
                )
              ])),
        ));
  }

  @override
  MoreViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MoreViewModel();
}
