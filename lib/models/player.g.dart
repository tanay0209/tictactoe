// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Player _$PlayerFromJson(Map<String, dynamic> json) => Player(
      nickname: json['nickname'] as String,
      socketID: json['socketID'] as String,
      points: (json['points'] as num).toDouble(),
      playerType: json['playerType'] as String,
    );

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
      'nickname': instance.nickname,
      'socketID': instance.socketID,
      'points': instance.points,
      'playerType': instance.playerType,
    };
