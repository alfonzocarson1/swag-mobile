import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'overlay_button_model.freezed.dart';

@freezed
class CustomOverlayItemModel with _$CustomOverlayItemModel {

 const factory CustomOverlayItemModel({required final String label, required final String imagePath}) =
      _CustomOverlayItemModel;

}
