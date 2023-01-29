import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:load_assessment_getx/app/data/model/appliance_model.dart';

class ApplianceController extends GetxController {
  Rx<List<Appliances>> appliances = Rx<List<Appliances>>([]);
  //List<Appliances> app

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

   final userAppliances = [
    Appliances(
        id: 1,
        name: 'IRON',
        wattage: 1500,
        quantity: 1,
        selectedAppliance: false),
    Appliances(
        id: 2, name: 'TV', wattage: 300, quantity: 1, selectedAppliance: false),
    Appliances(
        id: 3,
        name: 'LIGHT BULBS',
        wattage: 20,
        quantity: 1,
        selectedAppliance: false),
    Appliances(
        id: 4,
        name: 'REFRIGERATOR',
        wattage: 800,
        quantity: 1,
        selectedAppliance: false),
  ].obs;

  void quantityIncrement(int index) {
    //return qty + 1;
    final _app = <Appliances>[];
    userAppliances.forEach((element) {
      if(userAppliances[index] == element){
        element.quantity++;
        _app.add(element);
      }else{
        _app.add(element);
      }
    });
    userAppliances.value = _app;

  }

  void quantityDecrement(int index) {
   final _app = <Appliances>[];
   userAppliances.forEach((element) {
     if(userAppliances[index] == element){
       if(element.quantity> 1){
         element.quantity--;
       }
       _app.add(element);

     }else{
       _app.add(element);
     }
   });
   userAppliances.value = _app;

  }
  // quantityIncrement(int qty) {
  //   appliances.value = List<Appliances>.from(appliances.value
  //       .map((appliance) => appliance.copyWith(quantity: qty + 1)));
  //   appliances.update(appliances);
  // }
  //
  // quantityDecrement(int qty) {
  //   appliances.value = List<Appliances>.from(appliances.value.map(
  //       (appliance) => appliance.copyWith(quantity: (qty <= 1) ? 1 : qty - 1)));
  //   appliances.update(appliances);
  // }
}
