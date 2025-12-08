// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advent_of_code_website.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdventOfCodeWebsiteResponse {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdventOfCodeWebsiteResponse);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdventOfCodeWebsiteResponse()';
}


}

/// @nodoc
class $AdventOfCodeWebsiteResponseCopyWith<$Res>  {
$AdventOfCodeWebsiteResponseCopyWith(AdventOfCodeWebsiteResponse _, $Res Function(AdventOfCodeWebsiteResponse) __);
}


/// Adds pattern-matching-related methods to [AdventOfCodeWebsiteResponse].
extension AdventOfCodeWebsiteResponsePatterns on AdventOfCodeWebsiteResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AdventOfCodeWebsite_GetDescription_Response value)?  getDescription,TResult Function( AdventOfCodeWebsite_GetInput_Response value)?  getInput,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AdventOfCodeWebsite_GetDescription_Response() when getDescription != null:
return getDescription(_that);case AdventOfCodeWebsite_GetInput_Response() when getInput != null:
return getInput(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AdventOfCodeWebsite_GetDescription_Response value)  getDescription,required TResult Function( AdventOfCodeWebsite_GetInput_Response value)  getInput,}){
final _that = this;
switch (_that) {
case AdventOfCodeWebsite_GetDescription_Response():
return getDescription(_that);case AdventOfCodeWebsite_GetInput_Response():
return getInput(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AdventOfCodeWebsite_GetDescription_Response value)?  getDescription,TResult? Function( AdventOfCodeWebsite_GetInput_Response value)?  getInput,}){
final _that = this;
switch (_that) {
case AdventOfCodeWebsite_GetDescription_Response() when getDescription != null:
return getDescription(_that);case AdventOfCodeWebsite_GetInput_Response() when getInput != null:
return getInput(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String description,  String exampleInput)?  getDescription,TResult Function( String input)?  getInput,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AdventOfCodeWebsite_GetDescription_Response() when getDescription != null:
return getDescription(_that.description,_that.exampleInput);case AdventOfCodeWebsite_GetInput_Response() when getInput != null:
return getInput(_that.input);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String description,  String exampleInput)  getDescription,required TResult Function( String input)  getInput,}) {final _that = this;
switch (_that) {
case AdventOfCodeWebsite_GetDescription_Response():
return getDescription(_that.description,_that.exampleInput);case AdventOfCodeWebsite_GetInput_Response():
return getInput(_that.input);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String description,  String exampleInput)?  getDescription,TResult? Function( String input)?  getInput,}) {final _that = this;
switch (_that) {
case AdventOfCodeWebsite_GetDescription_Response() when getDescription != null:
return getDescription(_that.description,_that.exampleInput);case AdventOfCodeWebsite_GetInput_Response() when getInput != null:
return getInput(_that.input);case _:
  return null;

}
}

}

/// @nodoc


class AdventOfCodeWebsite_GetDescription_Response implements AdventOfCodeWebsiteResponse {
  const AdventOfCodeWebsite_GetDescription_Response({required this.description, required this.exampleInput});
  

 final  String description;
 final  String exampleInput;

/// Create a copy of AdventOfCodeWebsiteResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdventOfCodeWebsite_GetDescription_ResponseCopyWith<AdventOfCodeWebsite_GetDescription_Response> get copyWith => _$AdventOfCodeWebsite_GetDescription_ResponseCopyWithImpl<AdventOfCodeWebsite_GetDescription_Response>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdventOfCodeWebsite_GetDescription_Response&&(identical(other.description, description) || other.description == description)&&(identical(other.exampleInput, exampleInput) || other.exampleInput == exampleInput));
}


@override
int get hashCode => Object.hash(runtimeType,description,exampleInput);

@override
String toString() {
  return 'AdventOfCodeWebsiteResponse.getDescription(description: $description, exampleInput: $exampleInput)';
}


}

/// @nodoc
abstract mixin class $AdventOfCodeWebsite_GetDescription_ResponseCopyWith<$Res> implements $AdventOfCodeWebsiteResponseCopyWith<$Res> {
  factory $AdventOfCodeWebsite_GetDescription_ResponseCopyWith(AdventOfCodeWebsite_GetDescription_Response value, $Res Function(AdventOfCodeWebsite_GetDescription_Response) _then) = _$AdventOfCodeWebsite_GetDescription_ResponseCopyWithImpl;
@useResult
$Res call({
 String description, String exampleInput
});




}
/// @nodoc
class _$AdventOfCodeWebsite_GetDescription_ResponseCopyWithImpl<$Res>
    implements $AdventOfCodeWebsite_GetDescription_ResponseCopyWith<$Res> {
  _$AdventOfCodeWebsite_GetDescription_ResponseCopyWithImpl(this._self, this._then);

  final AdventOfCodeWebsite_GetDescription_Response _self;
  final $Res Function(AdventOfCodeWebsite_GetDescription_Response) _then;

/// Create a copy of AdventOfCodeWebsiteResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? description = null,Object? exampleInput = null,}) {
  return _then(AdventOfCodeWebsite_GetDescription_Response(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,exampleInput: null == exampleInput ? _self.exampleInput : exampleInput // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AdventOfCodeWebsite_GetInput_Response implements AdventOfCodeWebsiteResponse {
  const AdventOfCodeWebsite_GetInput_Response({required this.input});
  

 final  String input;

/// Create a copy of AdventOfCodeWebsiteResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdventOfCodeWebsite_GetInput_ResponseCopyWith<AdventOfCodeWebsite_GetInput_Response> get copyWith => _$AdventOfCodeWebsite_GetInput_ResponseCopyWithImpl<AdventOfCodeWebsite_GetInput_Response>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdventOfCodeWebsite_GetInput_Response&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'AdventOfCodeWebsiteResponse.getInput(input: $input)';
}


}

/// @nodoc
abstract mixin class $AdventOfCodeWebsite_GetInput_ResponseCopyWith<$Res> implements $AdventOfCodeWebsiteResponseCopyWith<$Res> {
  factory $AdventOfCodeWebsite_GetInput_ResponseCopyWith(AdventOfCodeWebsite_GetInput_Response value, $Res Function(AdventOfCodeWebsite_GetInput_Response) _then) = _$AdventOfCodeWebsite_GetInput_ResponseCopyWithImpl;
@useResult
$Res call({
 String input
});




}
/// @nodoc
class _$AdventOfCodeWebsite_GetInput_ResponseCopyWithImpl<$Res>
    implements $AdventOfCodeWebsite_GetInput_ResponseCopyWith<$Res> {
  _$AdventOfCodeWebsite_GetInput_ResponseCopyWithImpl(this._self, this._then);

  final AdventOfCodeWebsite_GetInput_Response _self;
  final $Res Function(AdventOfCodeWebsite_GetInput_Response) _then;

/// Create a copy of AdventOfCodeWebsiteResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(AdventOfCodeWebsite_GetInput_Response(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
