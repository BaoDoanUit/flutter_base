///
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'auth.pb.dart' as $0;
export 'auth.pb.dart';

class AccountClient extends $grpc.Client {
  static final _$signIn = $grpc.ClientMethod<$0.UserInfo, $0.UserReply>(
      '/client.Account/signIn',
      ($0.UserInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserReply.fromBuffer(value));
  static final _$register = $grpc.ClientMethod<$0.UserInfo, $0.UserReply>(
      '/client.Account/register',
      ($0.UserInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserReply.fromBuffer(value));

  AccountClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.UserReply> signIn($0.UserInfo request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$signIn, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserReply> register($0.UserInfo request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$register, request, options: options);
  }
}

abstract class AccountServiceBase extends $grpc.Service {
  $core.String get $name => 'client.Account';

  AccountServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.UserInfo, $0.UserReply>(
        'signIn',
        signIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserInfo.fromBuffer(value),
        ($0.UserReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserInfo, $0.UserReply>(
        'register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserInfo.fromBuffer(value),
        ($0.UserReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.UserReply> signIn_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UserInfo> request) async {
    return signIn(call, await request);
  }

  $async.Future<$0.UserReply> register_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UserInfo> request) async {
    return register(call, await request);
  }

  $async.Future<$0.UserReply> signIn(
      $grpc.ServiceCall call, $0.UserInfo request);
  $async.Future<$0.UserReply> register(
      $grpc.ServiceCall call, $0.UserInfo request);
}
