// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fileRepositoryHash() => r'8381bb4db4962616644702444c4b378e3bed0867';

/// See also [fileRepository].
@ProviderFor(fileRepository)
final fileRepositoryProvider = AutoDisposeProvider<FileRepository>.internal(
  fileRepository,
  name: r'fileRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fileRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FileRepositoryRef = AutoDisposeProviderRef<FileRepository>;
String _$fileDownloadHash() => r'5f73281155f2bf2690a7174216d8a1788d8c3ece';

/// See also [fileDownload].
@ProviderFor(fileDownload)
final fileDownloadProvider = AutoDisposeStreamProvider<String>.internal(
  fileDownload,
  name: r'fileDownloadProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fileDownloadHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FileDownloadRef = AutoDisposeStreamProviderRef<String>;
String _$fileUploadHash() => r'2f3e900caa8ee826b38509e970ff82e4bdc00efb';

/// See also [fileUpload].
@ProviderFor(fileUpload)
final fileUploadProvider = AutoDisposeFutureProvider<int>.internal(
  fileUpload,
  name: r'fileUploadProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fileUploadHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FileUploadRef = AutoDisposeFutureProviderRef<int>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
