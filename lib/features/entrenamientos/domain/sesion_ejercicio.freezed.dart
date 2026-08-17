// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sesion_ejercicio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SesionEjercicio {

 String get id; String get nombreEjercicio; String get musculoObjetivo; Serie get serieObjetivo; DateTime get creadoEn; EstadoSesion get estado; List<String> get notas;
/// Create a copy of SesionEjercicio
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SesionEjercicioCopyWith<SesionEjercicio> get copyWith => _$SesionEjercicioCopyWithImpl<SesionEjercicio>(this as SesionEjercicio, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SesionEjercicio&&(identical(other.id, id) || other.id == id)&&(identical(other.nombreEjercicio, nombreEjercicio) || other.nombreEjercicio == nombreEjercicio)&&(identical(other.musculoObjetivo, musculoObjetivo) || other.musculoObjetivo == musculoObjetivo)&&(identical(other.serieObjetivo, serieObjetivo) || other.serieObjetivo == serieObjetivo)&&(identical(other.creadoEn, creadoEn) || other.creadoEn == creadoEn)&&(identical(other.estado, estado) || other.estado == estado)&&const DeepCollectionEquality().equals(other.notas, notas));
}


@override
int get hashCode => Object.hash(runtimeType,id,nombreEjercicio,musculoObjetivo,serieObjetivo,creadoEn,estado,const DeepCollectionEquality().hash(notas));

@override
String toString() {
  return 'SesionEjercicio(id: $id, nombreEjercicio: $nombreEjercicio, musculoObjetivo: $musculoObjetivo, serieObjetivo: $serieObjetivo, creadoEn: $creadoEn, estado: $estado, notas: $notas)';
}


}

/// @nodoc
abstract mixin class $SesionEjercicioCopyWith<$Res>  {
  factory $SesionEjercicioCopyWith(SesionEjercicio value, $Res Function(SesionEjercicio) _then) = _$SesionEjercicioCopyWithImpl;
@useResult
$Res call({
 String id, String nombreEjercicio, String musculoObjetivo, Serie serieObjetivo, DateTime creadoEn, EstadoSesion estado, List<String> notas
});


$EstadoSesionCopyWith<$Res> get estado;

}
/// @nodoc
class _$SesionEjercicioCopyWithImpl<$Res>
    implements $SesionEjercicioCopyWith<$Res> {
  _$SesionEjercicioCopyWithImpl(this._self, this._then);

  final SesionEjercicio _self;
  final $Res Function(SesionEjercicio) _then;

/// Create a copy of SesionEjercicio
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nombreEjercicio = null,Object? musculoObjetivo = null,Object? serieObjetivo = null,Object? creadoEn = null,Object? estado = null,Object? notas = null,}) {
  return _then(SesionEjercicio(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nombreEjercicio: null == nombreEjercicio ? _self.nombreEjercicio : nombreEjercicio // ignore: cast_nullable_to_non_nullable
as String,musculoObjetivo: null == musculoObjetivo ? _self.musculoObjetivo : musculoObjetivo // ignore: cast_nullable_to_non_nullable
as String,serieObjetivo: null == serieObjetivo ? _self.serieObjetivo : serieObjetivo // ignore: cast_nullable_to_non_nullable
as Serie,creadoEn: null == creadoEn ? _self.creadoEn : creadoEn // ignore: cast_nullable_to_non_nullable
as DateTime,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as EstadoSesion,notas: null == notas ? _self.notas : notas // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of SesionEjercicio
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EstadoSesionCopyWith<$Res> get estado {
  
  return $EstadoSesionCopyWith<$Res>(_self.estado, (value) {
    return _then(_self.copyWith(estado: value));
  });
}
}


/// Adds pattern-matching-related methods to [SesionEjercicio].
extension SesionEjercicioPatterns on SesionEjercicio {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SesionEjercicio value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SesionEjercicio() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SesionEjercicio value)  $default,){
final _that = this;
switch (_that) {
case _SesionEjercicio():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SesionEjercicio value)?  $default,){
final _that = this;
switch (_that) {
case _SesionEjercicio() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String nombreEjercicio,  String musculoObjetivo,  Serie serieObjetivo,  DateTime creadoEn,  EstadoSesion estado,  List<String> notas)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SesionEjercicio() when $default != null:
return $default(_that.id,_that.nombreEjercicio,_that.musculoObjetivo,_that.serieObjetivo,_that.creadoEn,_that.estado,_that.notas);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String nombreEjercicio,  String musculoObjetivo,  Serie serieObjetivo,  DateTime creadoEn,  EstadoSesion estado,  List<String> notas)  $default,) {final _that = this;
switch (_that) {
case _SesionEjercicio():
return $default(_that.id,_that.nombreEjercicio,_that.musculoObjetivo,_that.serieObjetivo,_that.creadoEn,_that.estado,_that.notas);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String nombreEjercicio,  String musculoObjetivo,  Serie serieObjetivo,  DateTime creadoEn,  EstadoSesion estado,  List<String> notas)?  $default,) {final _that = this;
switch (_that) {
case _SesionEjercicio() when $default != null:
return $default(_that.id,_that.nombreEjercicio,_that.musculoObjetivo,_that.serieObjetivo,_that.creadoEn,_that.estado,_that.notas);case _:
  return null;

}
}

}

/// @nodoc


class _SesionEjercicio extends SesionEjercicio {
  const _SesionEjercicio({required this.id, required this.nombreEjercicio, required this.musculoObjetivo, required this.serieObjetivo, required this.creadoEn, required this.estado,  List<String> notas = const <String>[]}): _notas = notas,super._();
  

@override final  String id;
@override final  String nombreEjercicio;
@override final  String musculoObjetivo;
@override final  Serie serieObjetivo;
@override final  DateTime creadoEn;
@override final  EstadoSesion estado;
 final  List<String> _notas;
@override@JsonKey() List<String> get notas {
  if (_notas is EqualUnmodifiableListView) return _notas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notas);
}


/// Create a copy of SesionEjercicio
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SesionEjercicioCopyWith<_SesionEjercicio> get copyWith => __$SesionEjercicioCopyWithImpl<_SesionEjercicio>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SesionEjercicio&&(identical(other.id, id) || other.id == id)&&(identical(other.nombreEjercicio, nombreEjercicio) || other.nombreEjercicio == nombreEjercicio)&&(identical(other.musculoObjetivo, musculoObjetivo) || other.musculoObjetivo == musculoObjetivo)&&(identical(other.serieObjetivo, serieObjetivo) || other.serieObjetivo == serieObjetivo)&&(identical(other.creadoEn, creadoEn) || other.creadoEn == creadoEn)&&(identical(other.estado, estado) || other.estado == estado)&&const DeepCollectionEquality().equals(other._notas, _notas));
}


@override
int get hashCode => Object.hash(runtimeType,id,nombreEjercicio,musculoObjetivo,serieObjetivo,creadoEn,estado,const DeepCollectionEquality().hash(_notas));

@override
String toString() {
  return 'SesionEjercicio(id: $id, nombreEjercicio: $nombreEjercicio, musculoObjetivo: $musculoObjetivo, serieObjetivo: $serieObjetivo, creadoEn: $creadoEn, estado: $estado, notas: $notas)';
}


}

/// @nodoc
abstract mixin class _$SesionEjercicioCopyWith<$Res> implements $SesionEjercicioCopyWith<$Res> {
  factory _$SesionEjercicioCopyWith(_SesionEjercicio value, $Res Function(_SesionEjercicio) _then) = __$SesionEjercicioCopyWithImpl;
@override @useResult
$Res call({
 String id, String nombreEjercicio, String musculoObjetivo, Serie serieObjetivo, DateTime creadoEn, EstadoSesion estado, List<String> notas
});


@override $EstadoSesionCopyWith<$Res> get estado;

}
/// @nodoc
class __$SesionEjercicioCopyWithImpl<$Res>
    implements _$SesionEjercicioCopyWith<$Res> {
  __$SesionEjercicioCopyWithImpl(this._self, this._then);

  final _SesionEjercicio _self;
  final $Res Function(_SesionEjercicio) _then;

/// Create a copy of SesionEjercicio
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nombreEjercicio = null,Object? musculoObjetivo = null,Object? serieObjetivo = null,Object? creadoEn = null,Object? estado = null,Object? notas = null,}) {
  return _then(_SesionEjercicio(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nombreEjercicio: null == nombreEjercicio ? _self.nombreEjercicio : nombreEjercicio // ignore: cast_nullable_to_non_nullable
as String,musculoObjetivo: null == musculoObjetivo ? _self.musculoObjetivo : musculoObjetivo // ignore: cast_nullable_to_non_nullable
as String,serieObjetivo: null == serieObjetivo ? _self.serieObjetivo : serieObjetivo // ignore: cast_nullable_to_non_nullable
as Serie,creadoEn: null == creadoEn ? _self.creadoEn : creadoEn // ignore: cast_nullable_to_non_nullable
as DateTime,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as EstadoSesion,notas: null == notas ? _self._notas : notas // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of SesionEjercicio
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EstadoSesionCopyWith<$Res> get estado {
  
  return $EstadoSesionCopyWith<$Res>(_self.estado, (value) {
    return _then(_self.copyWith(estado: value));
  });
}
}

// dart format on
