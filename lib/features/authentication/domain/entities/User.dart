import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class User extends Equatable {
  final String email;
  final String password;
  final String name;

  User({
    @required this.name,
    @required this.email,
    @required this.password,
  }): super([email, password, name]);
}