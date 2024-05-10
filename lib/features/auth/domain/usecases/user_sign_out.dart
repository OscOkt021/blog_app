import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/features/auth/domain/respository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class UserSignOut implements UseCase<NoParams, NoParams> {
  final AuthRepository authRepository;
  const UserSignOut(this.authRepository);
  @override
  Future<Either<Failure, NoParams>> call(NoParams params) async {
    return await authRepository.signOutUser();
  }
}
