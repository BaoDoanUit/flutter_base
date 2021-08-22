// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_base/infrastructure/auth/models/auth.pbgrpc.dart';
import 'package:flutter_base/infrastructure/grpc/index.dart';
import 'package:flutter_base/packages.dart';

@singleton
class AuthRepository {
  final AccountClient accountClient =
      AccountClient(GrpcClientSingleton().client);

  Future<bool> register(UserInfo info) async {
    final userReply = await accountClient.register(info);
    if (userReply.response.state == ResponseState.SUCCESS)
      return true;
    else
      return false;
  }

  Future<UserReply> signIn(UserInfo user) async {
    final UserReply reply = await accountClient.signIn(user);
    return reply;
  }
}
