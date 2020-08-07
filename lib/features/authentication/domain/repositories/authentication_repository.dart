import 'package:bridge/core/errors/Failures.dart';
import 'package:bridge/features/authentication/domain/entities/User.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationRepository {
  Future<Either<Failures, User>> login(String email, String password);
  Future<Either<Failures, User>> signup(String name, String email, String password);
}