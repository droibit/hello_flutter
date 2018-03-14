//library hello_flutter;

import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class IpAddress extends Object with _$IpAddressSerializerMixin {

  final String origin;

  IpAddress(this.origin);

  factory IpAddress.fromJson(Map<String, dynamic> json) => _$IpAddressFromJson(json);
}

