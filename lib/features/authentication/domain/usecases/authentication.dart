import 'package:bridge/core/errors/Failures.dart';
import 'package:bridge/features/authentication/domain/entities/User.dart';
import 'package:bridge/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

class Authentication {
  final AuthenticationRepository repository;

  Authentication(this.repository);

  Future<Either<Failures, User>> executeSignup({
    @required name, 
    @required email,
    @required password
  }) async => await repository.signup(name, email, password);
}