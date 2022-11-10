import 'package:hive/hive.dart';
part 'user.g.dart';

@HiveType(typeId: 1)
class UserModel {
  UserModel({
    this.id,
    required this.firstName,
    required this.secondName,
    required this.email,
  });

  @HiveField(0)
  int? id;

  @HiveField(1)
  final String? firstName;

  @HiveField(2)
  final String? secondName;

  @HiveField(3)
  final String? email;
}
