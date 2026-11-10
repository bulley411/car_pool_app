import 'package:car_pooling_app/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import '../../common/custom_widgets.dart';
import 'my_vehicles_viewmodel.dart';

class MyVehiclesView extends StackedView<MyVehiclesViewModel> {
  const MyVehiclesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MyVehiclesViewModel viewModel,
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
                        child: header('My Vehicles', 'Vehicles you own',
                            'assets/images/image1.png'),
                      ),
                    )),
                Expanded(
                  // flex: 1,
                  child: Container(
                      width: double.infinity,
                      color: kcVeryLightGrey,
                      child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: const BoxDecoration(
                                color: kkPrimaryColor,
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20))),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(13.0),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.add,
                                          color: kkWhite,
                                        ),
                                        horizontalSpaceLarge,
                                        Text(
                                          'Add New Vehicle',
                                          style: TextStyle(
                                              color: kkWhite,
                                              fontSize:
                                                  getResponsiveMediumFontSize(
                                                          context) *
                                                      2.3),
                                        ),
                                      ],
                                    ),
                                  )
                                ]),
                          ))),
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
                        child: ListView.builder(
                          itemCount: viewModel.myVehicles.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ListTile(
                                title: Text(
                                    viewModel.myVehicles[index]['carMake']),
                                subtitle: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    IntrinsicHeight(
                                      child: Row(
                                        children: [
                                          verticalSpaceMedium,
                                          Text(viewModel.myVehicles[index]
                                              ['carModel']),
                                          const VerticalDivider(
                                            color: kcLightGrey,
                                            indent: 5,
                                            endIndent: 5,
                                            width: 10,
                                            thickness: 2,
                                          ),
                                          Text(viewModel.myVehicles[index]
                                              ['plateNumber']),
                                        ],
                                      ),
                                    ),
                                    verticalSpaceTiny,
                                    Text(viewModel.myVehicles[index]['seats']),
                                  ],
                                ),
                                trailing: viewModel.myVehicles[index]['image'],
                              ),
                            );
                          },
                        ),
                      )),
                )
              ])),
        ));
  }

  @override
  MyVehiclesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MyVehiclesViewModel();
}
