import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:load_assessment_getx/app/controller/appliance_controller.dart';

class ApplianceList extends StatelessWidget {
  final appliancesController = Get.put(ApplianceController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 520,
      child: ListView.builder(
        itemCount: appliancesController.userAppliances.length,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (applianceController, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        alignment: Alignment.center,
                        width: 120,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          appliancesController.userAppliances[index].name!,
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Card(
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        appliancesController.userAppliances[index].wattage !=
                                null
                            ? appliancesController
                                .userAppliances[index].wattage
                                .toString()
                            : '',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: IconButton(
                              icon: const Icon(
                                CupertinoIcons.minus,
                                size: 12,
                              ),
                              onPressed: () {
                                appliancesController
                                        .userAppliances[index].quantity =
                                    appliancesController.quantityDecrement(
                                        appliancesController
                                            .userAppliances[index].quantity);
                              },
                            ),
                          ),
                          Expanded(
                            child: Text(
                              appliancesController
                                  .userAppliances[index].quantity
                                  .toString(),
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                          ),
                          Expanded(
                            child: IconButton(
                              icon: const Icon(
                                CupertinoIcons.add,
                                size: 12,
                              ),
                              onPressed: () {
                                appliancesController.quantityIncrement(index);
                                print(
                                    'The quantity is ${appliancesController.userAppliances[index].quantity}');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Card(
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      child: Checkbox(
                        value: appliancesController
                            .userAppliances[index].selectedAppliance,
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
