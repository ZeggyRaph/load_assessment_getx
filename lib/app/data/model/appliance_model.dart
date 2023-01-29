import 'package:flutter/cupertino.dart';
class Appliances {
   int id;
   String? name;
   int wattage;
    int quantity;
   bool selectedAppliance;

  Appliances({
    this.id =1,
    this.name,
    this.wattage =0,
    this.quantity =1,
    this.selectedAppliance =false,
  });
  //
  // Appliances copyWith({
  //   int? id,
  //   String? name,
  //   int? wattage,
  //   int? quantity,
  //   bool? selectedAppliance,
  // }) {
  //   return Appliances(
  //     id: id ?? this.id,
  //     name: name ?? this.name,
  //     wattage: wattage ?? this.wattage,
  //     quantity: quantity  ?? this.quantity,
  //     selectedAppliance: selectedAppliance ?? this.selectedAppliance,
  //   );
  // }
}
