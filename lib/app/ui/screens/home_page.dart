import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/appliance_heading.dart';
import '../widget/appliance_list.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          // IconButton(onPressed: (){
          //   startAddNewAppliance(context);
          // }, icon: Icon(Icons.add),)
        ],
        title: const Text('LOAD ASSESSMENT'),
      ),
      body: SizedBox(
        width: Get.width,
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ApplianceHeading(),
                ),
                Expanded(
                  flex: 7,
                  child: ApplianceList(),
                ),
                //
                //UserAppliance(),
              ],
            ),
          ],
        ),
      ),

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: FloatingActionButton(child: Icon(Icons.add),
      //   onPressed: (){
      //     //startAddNewAppliance(context);
      //     setState(() {
      //       _userAppliances.add(Appliances(id: 20, name: 'bulb', wattage: 8000,quantity: 1, selectedAppliance: false));
      //
      //       //calculateTotalWatt();
      //
      //     });
      //   },
      // ),
    );
  }
}
