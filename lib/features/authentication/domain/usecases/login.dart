import 'package:bridge/core/errors/Failures.dart';
import 'package:bridge/core/usecases/authentication_usecase.dart';
import 'package:bridge/features/authentication/domain/entities/User.dart';
import 'package:bridge/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class Login implements AuthenticationUseCase<User, LoginParams> {
  final AuthenticationRepository repository;

  Login(this.repository);

  @override
  Future<Either<Failures, User>> call(LoginParams params) async => repository.login(params.email, params.password);

}

class LoginParams extends Equatable {
  final String email;
  final String password;

  LoginParams({
    @required this.email,
    @required this.password
  }): super([email, password]);
}