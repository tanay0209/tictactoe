import 'package:json_annotation/json_annotation.dart';

part "player.g.dart";

@JsonSerializable()
class Player {
  final String nickname;
  final String socketID;
  final double points;
  final String playerType;

  Player(
      {required this.nickname,
      required this.socketID,
      required this.points,
      required this.playerType});

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerToJson(this);

  Player copyWith({
    String? nickname,
    String? socketID,
    double? points,
    String? playerType,
  }) {
    return Player(
        nickname: nickname ?? this.nickname,
        socketID: socketID ?? this.socketID,
        points: points ?? this.points,
        playerType: playerType ?? this.playerType);
  }
}
