// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'section_giveaway.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GiveAwaySectionTearOff {
  const _$GiveAwaySectionTearOff();

  _GiveAwaySection fromValue({@required String value}) {
    return _GiveAwaySection(
      value: value,
    );
  }
}

// ignore: unused_element
const $GiveAwaySection = _$GiveAwaySectionTearOff();

mixin _$GiveAwaySection {
  String get value;

  $GiveAwaySectionCopyWith<GiveAwaySection> get copyWith;
}

abstract class $GiveAwaySectionCopyWith<$Res> {
  factory $GiveAwaySectionCopyWith(
          GiveAwaySection value, $Res Function(GiveAwaySection) then) =
      _$GiveAwaySectionCopyWithImpl<$Res>;
  $Res call({String value});
}

class _$GiveAwaySectionCopyWithImpl<$Res>
    implements $GiveAwaySectionCopyWith<$Res> {
  _$GiveAwaySectionCopyWithImpl(this._value, this._then);

  final GiveAwaySection _value;
  // ignore: unused_field
  final $Res Function(GiveAwaySection) _then;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed ? _value.value : value as String,
    ));
  }
}

abstract class _$GiveAwaySectionCopyWith<$Res>
    implements $GiveAwaySectionCopyWith<$Res> {
  factory _$GiveAwaySectionCopyWith(
          _GiveAwaySection value, $Res Function(_GiveAwaySection) then) =
      __$GiveAwaySectionCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

class __$GiveAwaySectionCopyWithImpl<$Res>
    extends _$GiveAwaySectionCopyWithImpl<$Res>
    implements _$GiveAwaySectionCopyWith<$Res> {
  __$GiveAwaySectionCopyWithImpl(
      _GiveAwaySection _value, $Res Function(_GiveAwaySection) _then)
      : super(_value, (v) => _then(v as _GiveAwaySection));

  @override
  _GiveAwaySection get _value => super._value as _GiveAwaySection;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(_GiveAwaySection(
      value: value == freezed ? _value.value : value as String,
    ));
  }
}

class _$_GiveAwaySection
    with DiagnosticableTreeMixin
    implements _GiveAwaySection {
  const _$_GiveAwaySection({@required this.value}) : assert(value != null);

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GiveAwaySection.fromValue(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GiveAwaySection.fromValue'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GiveAwaySection &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  _$GiveAwaySectionCopyWith<_GiveAwaySection> get copyWith =>
      __$GiveAwaySectionCopyWithImpl<_GiveAwaySection>(this, _$identity);
}

abstract class _GiveAwaySection implements GiveAwaySection {
  const factory _GiveAwaySection({@required String value}) = _$_GiveAwaySection;

  @override
  String get value;
  @override
  _$GiveAwaySectionCopyWith<_GiveAwaySection> get copyWith;
}
