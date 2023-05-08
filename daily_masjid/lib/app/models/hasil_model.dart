// To parse this JSON data, do
//
//     final hasilRespon = hasilResponFromJson(jsonString);

import 'dart:convert';

HasilRespon hasilResponFromJson(String str) =>
    HasilRespon.fromJson(json.decode(str));

String hasilResponToJson(HasilRespon data) => json.encode(data.toJson());

class HasilRespon {
  Data? data;
  Meta? meta;

  HasilRespon({
    this.data,
    this.meta,
  });

  factory HasilRespon.fromJson(Map<String, dynamic> json) => HasilRespon(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "meta": meta?.toJson(),
      };
}

class Data {
  String? customerNumber;
  String? customerName;
  List<DateTime>? periods;
  int? baseAmount;
  int? penaltyFee;
  int? adminCharge;
  int? totalAmount;
  String? referenceNumber;
  Partner? partner;

  Data({
    this.customerNumber,
    this.customerName,
    this.periods,
    this.baseAmount,
    this.penaltyFee,
    this.adminCharge,
    this.totalAmount,
    this.referenceNumber,
    this.partner,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        customerNumber: json["customer_number"],
        customerName: json["customer_name"],
        periods: json["periods"] == null
            ? []
            : List<DateTime>.from(
                json["periods"]!.map((x) => DateTime.parse(x))),
        baseAmount: json["base_amount"],
        penaltyFee: json["penalty_fee"],
        adminCharge: json["admin_charge"],
        totalAmount: json["total_amount"],
        referenceNumber: json["reference_number"],
        partner:
            json["partner"] == null ? null : Partner.fromJson(json["partner"]),
      );

  Map<String, dynamic> toJson() => {
        "customer_number": customerNumber,
        "customer_name": customerName,
        "periods": periods == null
            ? []
            : List<dynamic>.from(periods!.map((x) => x.toIso8601String())),
        "base_amount": baseAmount,
        "penalty_fee": penaltyFee,
        "admin_charge": adminCharge,
        "total_amount": totalAmount,
        "reference_number": referenceNumber,
        "partner": partner?.toJson(),
      };
}

class Partner {
  String? name;
  String? imageUrl;

  Partner({
    this.name,
    this.imageUrl,
  });

  factory Partner.fromJson(Map<String, dynamic> json) => Partner(
        name: json["name"],
        imageUrl: json["image_url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "image_url": imageUrl,
      };
}

class Meta {
  int? httpStatus;

  Meta({
    this.httpStatus,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        httpStatus: json["http_status"],
      );

  Map<String, dynamic> toJson() => {
        "http_status": httpStatus,
      };
}
