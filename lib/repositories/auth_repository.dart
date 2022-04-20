import 'package:jam_re_store/api/auth_api.dart';
import 'package:jam_re_store/models/auth/user.dart';
import 'package:jam_re_store/models/base_repository.dart';
import 'package:jam_re_store/models/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:jam_re_store/models/session/profile.dart';

class AuthRepository extends BaseRepository {
  var authApi = AuthApi();

  Future<Either<Failure, Profile>> signIn(UserSignIn userSignIn) async {
    return super.toEither(apiCall: () => authApi.signIn(user: userSignIn));
  }

  Future<Either<Failure, Profile>> signUp(UserSignUp userSignUp) async {
    return super.toEither(apiCall: () => authApi.signUp(user: userSignUp));
  }

  Future<Either<Failure, Profile>> setNumberPhone(NumberPhone number) async {
    return super
        .toEither(apiCall: () => authApi.setNumberPhone(numberPhone: number));
  }

  Future<Either<Failure, Profile>> validationCode(Code code) async {
    return super
        .toEither(apiCall: () => authApi.validationCode(codeVerificated: code));
  }
}
