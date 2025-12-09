// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TestData {

 dynamic get input; dynamic get expect;
/// Create a copy of TestData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TestDataCopyWith<TestData> get copyWith => _$TestDataCopyWithImpl<TestData>(this as TestData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TestData&&const DeepCollectionEquality().equals(other.input, input)&&const DeepCollectionEquality().equals(other.expect, expect));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(input),const DeepCollectionEquality().hash(expect));

@override
String toString() {
  return 'TestData(input: $input, expect: $expect)';
}


}

/// @nodoc
abstract mixin class $TestDataCopyWith<$Res>  {
  factory $TestDataCopyWith(TestData value, $Res Function(TestData) _then) = _$TestDataCopyWithImpl;
@useResult
$Res call({
 dynamic input, dynamic expect
});




}
/// @nodoc
class _$TestDataCopyWithImpl<$Res>
    implements $TestDataCopyWith<$Res> {
  _$TestDataCopyWithImpl(this._self, this._then);

  final TestData _self;
  final $Res Function(TestData) _then;

/// Create a copy of TestData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? input = freezed,Object? expect = freezed,}) {
  return _then(_self.copyWith(
input: freezed == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as dynamic,expect: freezed == expect ? _self.expect : expect // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [TestData].
extension TestDataPatterns on TestData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TestData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TestData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TestData value)  $default,){
final _that = this;
switch (_that) {
case _TestData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TestData value)?  $default,){
final _that = this;
switch (_that) {
case _TestData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( dynamic input,  dynamic expect)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TestData() when $default != null:
return $default(_that.input,_that.expect);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( dynamic input,  dynamic expect)  $default,) {final _that = this;
switch (_that) {
case _TestData():
return $default(_that.input,_that.expect);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( dynamic input,  dynamic expect)?  $default,) {final _that = this;
switch (_that) {
case _TestData() when $default != null:
return $default(_that.input,_that.expect);case _:
  return null;

}
}

}

/// @nodoc


class _TestData implements TestData {
  const _TestData(this.input, {required this.expect});
  

@override final  dynamic input;
@override final  dynamic expect;

/// Create a copy of TestData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TestDataCopyWith<_TestData> get copyWith => __$TestDataCopyWithImpl<_TestData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TestData&&const DeepCollectionEquality().equals(other.input, input)&&const DeepCollectionEquality().equals(other.expect, expect));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(input),const DeepCollectionEquality().hash(expect));

@override
String toString() {
  return 'TestData(input: $input, expect: $expect)';
}


}

/// @nodoc
abstract mixin class _$TestDataCopyWith<$Res> implements $TestDataCopyWith<$Res> {
  factory _$TestDataCopyWith(_TestData value, $Res Function(_TestData) _then) = __$TestDataCopyWithImpl;
@override @useResult
$Res call({
 dynamic input, dynamic expect
});




}
/// @nodoc
class __$TestDataCopyWithImpl<$Res>
    implements _$TestDataCopyWith<$Res> {
  __$TestDataCopyWithImpl(this._self, this._then);

  final _TestData _self;
  final $Res Function(_TestData) _then;

/// Create a copy of TestData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = freezed,Object? expect = freezed,}) {
  return _then(_TestData(
freezed == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as dynamic,expect: freezed == expect ? _self.expect : expect // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
