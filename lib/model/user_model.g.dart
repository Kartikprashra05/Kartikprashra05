// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as String?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      old_password: json['old_password'] as String?,
      new_password: json['new_password'] as String?,
      confirm_password: json['confirm_password'] as String?,
      name: json['name'] as String?,
      country_code: json['country_code'] as String?,
      phone: json['phone'] as String?,
      role: json['role'] as String?,
      device_token: json['device_token'] as String?,
      device_type: json['device_type'] as String?,
      otp: json['otp'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      social_type: json['social_type'] as String?,
      social_id: json['social_id'] as String?,
      access_token: json['access_token'] as String?,
      is_phone_verified: json['is_phone_verified'] as bool?,
      is_email_verified: json['is_email_verified'] as bool?,
      is_otp_verified: json['is_otp_verified'] as String?,
      location: json['location'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      geometry: (json['geometry'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      success: json['success'] as bool?,
      code: json['code'] as int?,
      message: json['message'] as String?,
      body: json['body'] == null
          ? null
          : UserModel.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('first_name', instance.first_name);
  writeNotNull('last_name', instance.last_name);
  writeNotNull('email', instance.email);
  writeNotNull('password', instance.password);
  writeNotNull('old_password', instance.old_password);
  writeNotNull('new_password', instance.new_password);
  writeNotNull('confirm_password', instance.confirm_password);
  writeNotNull('name', instance.name);
  writeNotNull('country_code', instance.country_code);
  writeNotNull('phone', instance.phone);
  writeNotNull('role', instance.role);
  writeNotNull('device_token', instance.device_token);
  writeNotNull('device_type', instance.device_type);
  writeNotNull('otp', instance.otp);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('social_type', instance.social_type);
  writeNotNull('social_id', instance.social_id);
  writeNotNull('access_token', instance.access_token);
  writeNotNull('is_phone_verified', instance.is_phone_verified);
  writeNotNull('is_email_verified', instance.is_email_verified);
  writeNotNull('is_otp_verified', instance.is_otp_verified);
  writeNotNull('location', instance.location);
  writeNotNull('latitude', instance.latitude);
  writeNotNull('longitude', instance.longitude);
  writeNotNull('geometry', instance.geometry);
  writeNotNull('success', instance.success);
  writeNotNull('code', instance.code);
  writeNotNull('message', instance.message);
  writeNotNull('body', instance.body?.toJson());
  return val;
}
