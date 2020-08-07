import 'package:bridge/core/errors/Failures.dart';
import 'package:bridge/core/usecases/authentication_usecase.dart';
import 'package:bridge/features/authentication/domain/entities/User.dart';
import 'package:bridge/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Signup extends AuthenticationUseCase<User, SignupParams>{
  final AuthenticationRepository repository;

  Signup(this.repository);

  @override
  Future<Either<Failures, User>> call(SignupParams params) async => await repository.signup(
    params.name, 
    params.email, 
    params.password
  );
}

class SignupParams extends Equatable {
  final String name;
  final String email;
  final String password;

  SignupParams({
    @required this.name,
    @required this.email,
    @required this.password
  }): super([name, email, password]);
}