import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_data.freezed.dart';

@freezed
abstract class TestData with _$TestData {
  const factory TestData(dynamic input, {
    required dynamic expect,
  }) = _TestData;


}
