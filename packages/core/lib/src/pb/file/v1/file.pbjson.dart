///
//  Generated code. Do not modify.
//  source: file/v1/file.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use fileDownloadRequestDescriptor instead')
const FileDownloadRequest$json = const {
  '1': 'FileDownloadRequest',
};

/// Descriptor for `FileDownloadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileDownloadRequestDescriptor = $convert.base64Decode('ChNGaWxlRG93bmxvYWRSZXF1ZXN0');
@$core.Deprecated('Use fileDownloadResponseDescriptor instead')
const FileDownloadResponse$json = const {
  '1': 'FileDownloadResponse',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `FileDownloadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileDownloadResponseDescriptor = $convert.base64Decode('ChRGaWxlRG93bmxvYWRSZXNwb25zZRISCgRkYXRhGAEgASgMUgRkYXRh');
@$core.Deprecated('Use fileUploadRequestDescriptor instead')
const FileUploadRequest$json = const {
  '1': 'FileUploadRequest',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `FileUploadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileUploadRequestDescriptor = $convert.base64Decode('ChFGaWxlVXBsb2FkUmVxdWVzdBISCgRkYXRhGAEgASgMUgRkYXRh');
@$core.Deprecated('Use fileUploadResponseDescriptor instead')
const FileUploadResponse$json = const {
  '1': 'FileUploadResponse',
  '2': const [
    const {'1': 'size', '3': 1, '4': 1, '5': 5, '10': 'size'},
  ],
};

/// Descriptor for `FileUploadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileUploadResponseDescriptor = $convert.base64Decode('ChJGaWxlVXBsb2FkUmVzcG9uc2USEgoEc2l6ZRgBIAEoBVIEc2l6ZQ==');
