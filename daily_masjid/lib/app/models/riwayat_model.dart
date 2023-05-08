// To parse this JSON data, do
//
//     final riwayatModel = riwayatModelFromJson(jsonString);

import 'dart:convert';

RiwayatModel riwayatModelFromJson(String str) =>
    RiwayatModel.fromJson(json.decode(str));

String riwayatModelToJson(RiwayatModel data) => json.encode(data.toJson());

class RiwayatModel {
  int? id;
  String? customerNumber;
  String? customerName;
  String? periods;
  String? totalAmount;

  RiwayatModel({
    this.id,
    this.customerNumber,
    this.customerName,
    this.periods,
    this.totalAmount,
  });

  factory RiwayatModel.fromJson(Map<String, dynamic> json) => RiwayatModel(
        id: json["id"],
        customerNumber: json["customer_number"],
        customerName: json["name"],
        periods: json["periods"],
        totalAmount: json["total_amount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "customer_number": customerNumber,
        "customer_name": customerName,
        "periods": periods,
        "total_amount": totalAmount,
      };
}

// List<RiwayatModel> listRiwayat = [
//   RiwayatModel(
//       id: "1",
//       customerNumber: "1",
//       customerName: "customerName",
//       periods: "12 2121",
//       totalAmount: "11"),
//   RiwayatModel(
//       id: "3",
//       customerNumber: "3",
//       customerName: "customerName",
//       periods: "12 2121",
//       totalAmount: "11"),
//   RiwayatModel(
//       id: "2",
//       customerNumber: "2",
//       customerName: "customerName11",
//       periods: "12 2121",
//       totalAmount: "12")
// ];
