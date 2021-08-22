///
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const ResponseState$json = const {
  '1': 'ResponseState',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'FAIL', '2': 1},
  ],
};

const UserInfo$json = const {
  '1': 'UserInfo',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'roleId', '3': 4, '4': 1, '5': 5, '10': 'roleId'},
    const {'1': 'idPerson', '3': 5, '4': 1, '5': 9, '10': 'idPerson'},
    const {'1': 'newPassword', '3': 6, '4': 1, '5': 9, '10': 'newPassword'},
    const {'1': 'tokenNoti', '3': 7, '4': 1, '5': 9, '10': 'tokenNoti'},
  ],
};

const Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'state', '3': 1, '4': 1, '5': 14, '6': '.client.ResponseState', '10': 'state'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'file', '3': 3, '4': 1, '5': 12, '10': 'file'},
  ],
};

const UserReply$json = const {
  '1': 'UserReply',
  '2': const [
    const {'1': 'response', '3': 1, '4': 1, '5': 11, '6': '.client.Response', '10': 'response'},
    const {'1': 'info', '3': 2, '4': 1, '5': 11, '6': '.client.UserInfo', '10': 'info'},
  ],
};

