import 'package:car_pooling_app/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import '../../common/custom_widgets.dart';
import 'wallet_viewmodel.dart';

class WalletView extends StackedView<WalletViewModel> {
  const WalletView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    WalletViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: kcVeryLightGrey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: header('N5,000.00', 'Available Balance',
                        'assets/images/image2.png'),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: kcVeryLightGrey,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: kkPrimaryColor,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomWalletTextIcon(
                            icon: Icon(
                              Icons.arrow_upward,
                              color: kkWhite,
                            ),
                            text: 'Add Money',
                          ),
                          VerticalDivider(
                            color: kkWhite,
                            indent: 20,
                            endIndent: 20,
                            width: 10,
                          ),
                          CustomWalletTextIcon(
                            icon: Icon(
                              Icons.arrow_upward,
                              color: kkWhite,
                            ),
                            text: 'Withdraw',
                          ),
                        ]),
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
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (BuildContext context, int index) {
                          return const ListTile(
                            title: WalletTitleListView(),
                            subtitle: WalletSubtitleListView(),
                          );
                        }),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  WalletViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      WalletViewModel();
}

class CustomWalletTextIcon extends StatelessWidget {
  final Icon icon;
  final String text;
  const CustomWalletTextIcon(
      {super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        horizontalSpaceSmall,
        Text(
          text,
          style: const TextStyle(color: kkWhite),
        )
      ],
    );
  }
}

class WalletTitleListView extends StatelessWidget {
  const WalletTitleListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Paid To Driver',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'N1500.00',
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
    );
  }
}

class WalletSubtitleListView extends StatelessWidget {
  const WalletSubtitleListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Driver\'s name',
          ),
          Text(
            '17 Aug, 11:30am',
          )
        ],
      ),
    );
  }
}
