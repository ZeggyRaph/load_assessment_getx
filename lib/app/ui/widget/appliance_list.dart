import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:load_assessment_getx/app/controller/appliance_controller.dart';

class ApplianceList extends GetView<ApplianceController> {
  final appliancesController = Get.put(ApplianceController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      child: ListView.builder(
        itemCount: appliancesController.userAppliances.length,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (applianceController, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Card(
                    child: Container(
                      alignment: Alignment.center,
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
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: const Icon(
                              CupertinoIcons.minus,
                              size: 12,
                            ),
                            onPressed: () =>
                                appliancesController.quantityDecrement(index),
                          ),
                          Obx(
                            () => Text(
                              appliancesController
                                  .userAppliances[index].quantity
                                  .toString(),
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                          ),
                          IconButton(
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
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
