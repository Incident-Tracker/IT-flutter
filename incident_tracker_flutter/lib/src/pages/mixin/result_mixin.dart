import 'package:flutter/material.dart';
import 'package:incident_tracker_flutter/src/models/order_enum_model.dart';

mixin ResultMixin {
  DropdownButton<String> buildDropdownButton() {
    return DropdownButton<String>(
      value: '최신순',
      icon: Icon(Icons.arrow_drop_down, color: Colors.black),
      iconSize: 24,
      elevation: 16,
      underline: Container(),
      items: Order.values.map(buildDropdownItem).toList(),
    );
  }

  DropdownMenuItem<String> buildDropdownItem(Order item) {
    return DropdownMenuItem<String>(
      child: Text(
        item.getOrderStringName(),
        style: TextStyle(color: Colors.black),
      ),
      value: item.getOrderStringName(),
    );
  }
}