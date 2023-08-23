class VerifyRateModel {
  String profileIdToUpdate;
  String productItemId;

  VerifyRateModel({
    required this.profileIdToUpdate,
    required this.productItemId,
  });

  Map<String, dynamic> toJson() {
    return {
      'profileIdToUpdate': profileIdToUpdate,
      'productItemId': productItemId,
    };
  }
}
