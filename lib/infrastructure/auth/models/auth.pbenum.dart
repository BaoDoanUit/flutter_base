///
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ResponseState extends $pb.ProtobufEnum {
  static const ResponseState SUCCESS = ResponseState._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const ResponseState FAIL = ResponseState._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAIL');

  static const $core.List<ResponseState> values = <ResponseState> [
    SUCCESS,
    FAIL,
  ];

  static final $core.Map<$core.int, ResponseState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ResponseState valueOf($core.int value) => _byValue[value];

  const ResponseState._($core.int v, $core.String n) : super(v, n);
}

