import 'package:bridge/core/errors/Failures.dart';
import 'package:bridge/features/authentication/domain/entities/User.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationUseCase<Type, Params> {
  Future<Either<Failures, User>> call(Params params);
}