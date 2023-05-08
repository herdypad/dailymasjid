// To parse this JSON data, do
//
//     final responeError = responeErrorFromJson(jsonString);

import 'dart:convert';

ResponeError responeErrorFromJson(String str) =>
    ResponeError.fromJson(json.decode(str));

String responeErrorToJson(ResponeError data) => json.encode(data.toJson());

class ResponeError {
  List<Error> errors;
  Meta meta;

  ResponeError({
    required this.errors,
    required this.meta,
  });

  factory ResponeError.fromJson(Map<String, dynamic> json) => ResponeError(
        errors: List<Error>.from(json["errors"].map((x) => Error.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "errors": List<dynamic>.from(errors.map((x) => x.toJson())),
        "meta": meta.toJson(),
      };
}

class Error {
  String message;
  int code;

  Error({
    required this.message,
    required this.code,
  });

  factory Error.fromJson(Map<String, dynamic> json) => Error(
        message: json["message"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "code": code,
      };
}

class Meta {
  int httpStatus;

  Meta({
    required this.httpStatus,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        httpStatus: json["http_status"],
      );

  Map<String, dynamic> toJson() => {
        "http_status": httpStatus,
      };
}
