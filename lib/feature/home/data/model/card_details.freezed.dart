// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardDetails _$CardDetailsFromJson(Map<String, dynamic> json) {
  return _CardDetails.fromJson(json);
}

/// @nodoc
mixin _$CardDetails {
  String? get cardNo => throw _privateConstructorUsedError;
  String? get cardName => throw _privateConstructorUsedError;
  bool get isAccountSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardDetailsCopyWith<CardDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardDetailsCopyWith<$Res> {
  factory $CardDetailsCopyWith(
          CardDetails value, $Res Function(CardDetails) then) =
      _$CardDetailsCopyWithImpl<$Res, CardDetails>;
  @useResult
  $Res call({String? cardNo, String? cardName, bool isAccountSelected});
}

/// @nodoc
class _$CardDetailsCopyWithImpl<$Res, $Val extends CardDetails>
    implements $CardDetailsCopyWith<$Res> {
  _$CardDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNo = freezed,
    Object? cardName = freezed,
    Object? isAccountSelected = null,
  }) {
    return _then(_value.copyWith(
      cardNo: freezed == cardNo
          ? _value.cardNo
          : cardNo // ignore: cast_nullable_to_non_nullable
              as String?,
      cardName: freezed == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String?,
      isAccountSelected: null == isAccountSelected
          ? _value.isAccountSelected
          : isAccountSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardDetailsCopyWith<$Res>
    implements $CardDetailsCopyWith<$Res> {
  factory _$$_CardDetailsCopyWith(
          _$_CardDetails value, $Res Function(_$_CardDetails) then) =
      __$$_CardDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? cardNo, String? cardName, bool isAccountSelected});
}

/// @nodoc
class __$$_CardDetailsCopyWithImpl<$Res>
    extends _$CardDetailsCopyWithImpl<$Res, _$_CardDetails>
    implements _$$_CardDetailsCopyWith<$Res> {
  __$$_CardDetailsCopyWithImpl(
      _$_CardDetails _value, $Res Function(_$_CardDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNo = freezed,
    Object? cardName = freezed,
    Object? isAccountSelected = null,
  }) {
    return _then(_$_CardDetails(
      cardNo: freezed == cardNo
          ? _value.cardNo
          : cardNo // ignore: cast_nullable_to_non_nullable
              as String?,
      cardName: freezed == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String?,
      isAccountSelected: null == isAccountSelected
          ? _value.isAccountSelected
          : isAccountSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardDetails implements _CardDetails {
  const _$_CardDetails(
      {this.cardNo, this.cardName, this.isAccountSelected = false});

  factory _$_CardDetails.fromJson(Map<String, dynamic> json) =>
      _$$_CardDetailsFromJson(json);

  @override
  final String? cardNo;
  @override
  final String? cardName;
  @override
  @JsonKey()
  final bool isAccountSelected;

  @override
  String toString() {
    return 'CardDetails(cardNo: $cardNo, cardName: $cardName, isAccountSelected: $isAccountSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardDetails &&
            (identical(other.cardNo, cardNo) || other.cardNo == cardNo) &&
            (identical(other.cardName, cardName) ||
                other.cardName == cardName) &&
            (identical(other.isAccountSelected, isAccountSelected) ||
                other.isAccountSelected == isAccountSelected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cardNo, cardName, isAccountSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardDetailsCopyWith<_$_CardDetails> get copyWith =>
      __$$_CardDetailsCopyWithImpl<_$_CardDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardDetailsToJson(
      this,
    );
  }
}

abstract class _CardDetails implements CardDetails {
  const factory _CardDetails(
      {final String? cardNo,
      final String? cardName,
      final bool isAccountSelected}) = _$_CardDetails;

  factory _CardDetails.fromJson(Map<String, dynamic> json) =
      _$_CardDetails.fromJson;

  @override
  String? get cardNo;
  @override
  String? get cardName;
  @override
  bool get isAccountSelected;
  @override
  @JsonKey(ignore: true)
  _$$_CardDetailsCopyWith<_$_CardDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
