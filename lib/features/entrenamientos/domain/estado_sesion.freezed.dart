// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'estado_sesion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EstadoSesion {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EstadoSesion);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EstadoSesion()';
}


}

/// @nodoc
class $EstadoSesionCopyWith<$Res>  {
$EstadoSesionCopyWith(EstadoSesion _, $Res Function(EstadoSesion) __);
}


/// Adds pattern-matching-related methods to [EstadoSesion].
extension EstadoSesionPatterns on EstadoSesion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Planificada value)?  planificada,TResult Function( EnProgreso value)?  enProgreso,TResult Function( Completada value)?  completada,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Planificada() when planificada != null:
return planificada(_that);case EnProgreso() when enProgreso != null:
return enProgreso(_that);case Completada() when completada != null:
return completada(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Planificada value)  planificada,required TResult Function( EnProgreso value)  enProgreso,required TResult Function( Completada value)  completada,}){
final _that = this;
switch (_that) {
case Planificada():
return planificada(_that);case EnProgreso():
return enProgreso(_that);case Completada():
return completada(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Planificada value)?  planificada,TResult? Function( EnProgreso value)?  enProgreso,TResult? Function( Completada value)?  completada,}){
final _that = this;
switch (_that) {
case Planificada() when planificada != null:
return planificada(_that);case EnProgreso() when enProgreso != null:
return enProgreso(_that);case Completada() when completada != null:
return completada(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int ordenEnRutina)?  planificada,TResult Function( DateTime iniciadoEn)?  enProgreso,TResult Function( DateTime completadoEn,  int esfuerzoPercibido)?  completada,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Planificada() when planificada != null:
return planificada(_that.ordenEnRutina);case EnProgreso() when enProgreso != null:
return enProgreso(_that.iniciadoEn);case Completada() when completada != null:
return completada(_that.completadoEn,_that.esfuerzoPercibido);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int ordenEnRutina)  planificada,required TResult Function( DateTime iniciadoEn)  enProgreso,required TResult Function( DateTime completadoEn,  int esfuerzoPercibido)  completada,}) {final _that = this;
switch (_that) {
case Planificada():
return planificada(_that.ordenEnRutina);case EnProgreso():
return enProgreso(_that.iniciadoEn);case Completada():
return completada(_that.completadoEn,_that.esfuerzoPercibido);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int ordenEnRutina)?  planificada,TResult? Function( DateTime iniciadoEn)?  enProgreso,TResult? Function( DateTime completadoEn,  int esfuerzoPercibido)?  completada,}) {final _that = this;
switch (_that) {
case Planificada() when planificada != null:
return planificada(_that.ordenEnRutina);case EnProgreso() when enProgreso != null:
return enProgreso(_that.iniciadoEn);case Completada() when completada != null:
return completada(_that.completadoEn,_that.esfuerzoPercibido);case _:
  return null;

}
}

}

/// @nodoc


class Planificada extends EstadoSesion {
  const Planificada(this.ordenEnRutina): super._();
  

 final  int ordenEnRutina;

/// Create a copy of EstadoSesion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlanificadaCopyWith<Planificada> get copyWith => _$PlanificadaCopyWithImpl<Planificada>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Planificada&&(identical(other.ordenEnRutina, ordenEnRutina) || other.ordenEnRutina == ordenEnRutina));
}


@override
int get hashCode => Object.hash(runtimeType,ordenEnRutina);

@override
String toString() {
  return 'EstadoSesion.planificada(ordenEnRutina: $ordenEnRutina)';
}


}

/// @nodoc
abstract mixin class $PlanificadaCopyWith<$Res> implements $EstadoSesionCopyWith<$Res> {
  factory $PlanificadaCopyWith(Planificada value, $Res Function(Planificada) _then) = _$PlanificadaCopyWithImpl;
@useResult
$Res call({
 int ordenEnRutina
});




}
/// @nodoc
class _$PlanificadaCopyWithImpl<$Res>
    implements $PlanificadaCopyWith<$Res> {
  _$PlanificadaCopyWithImpl(this._self, this._then);

  final Planificada _self;
  final $Res Function(Planificada) _then;

/// Create a copy of EstadoSesion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ordenEnRutina = null,}) {
  return _then(Planificada(
null == ordenEnRutina ? _self.ordenEnRutina : ordenEnRutina // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class EnProgreso extends EstadoSesion {
  const EnProgreso(this.iniciadoEn): super._();
  

 final  DateTime iniciadoEn;

/// Create a copy of EstadoSesion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnProgresoCopyWith<EnProgreso> get copyWith => _$EnProgresoCopyWithImpl<EnProgreso>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnProgreso&&(identical(other.iniciadoEn, iniciadoEn) || other.iniciadoEn == iniciadoEn));
}


@override
int get hashCode => Object.hash(runtimeType,iniciadoEn);

@override
String toString() {
  return 'EstadoSesion.enProgreso(iniciadoEn: $iniciadoEn)';
}


}

/// @nodoc
abstract mixin class $EnProgresoCopyWith<$Res> implements $EstadoSesionCopyWith<$Res> {
  factory $EnProgresoCopyWith(EnProgreso value, $Res Function(EnProgreso) _then) = _$EnProgresoCopyWithImpl;
@useResult
$Res call({
 DateTime iniciadoEn
});




}
/// @nodoc
class _$EnProgresoCopyWithImpl<$Res>
    implements $EnProgresoCopyWith<$Res> {
  _$EnProgresoCopyWithImpl(this._self, this._then);

  final EnProgreso _self;
  final $Res Function(EnProgreso) _then;

/// Create a copy of EstadoSesion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? iniciadoEn = null,}) {
  return _then(EnProgreso(
null == iniciadoEn ? _self.iniciadoEn : iniciadoEn // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class Completada extends EstadoSesion {
  const Completada(this.completadoEn, this.esfuerzoPercibido): super._();
  

 final  DateTime completadoEn;
 final  int esfuerzoPercibido;

/// Create a copy of EstadoSesion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompletadaCopyWith<Completada> get copyWith => _$CompletadaCopyWithImpl<Completada>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Completada&&(identical(other.completadoEn, completadoEn) || other.completadoEn == completadoEn)&&(identical(other.esfuerzoPercibido, esfuerzoPercibido) || other.esfuerzoPercibido == esfuerzoPercibido));
}


@override
int get hashCode => Object.hash(runtimeType,completadoEn,esfuerzoPercibido);

@override
String toString() {
  return 'EstadoSesion.completada(completadoEn: $completadoEn, esfuerzoPercibido: $esfuerzoPercibido)';
}


}

/// @nodoc
abstract mixin class $CompletadaCopyWith<$Res> implements $EstadoSesionCopyWith<$Res> {
  factory $CompletadaCopyWith(Completada value, $Res Function(Completada) _then) = _$CompletadaCopyWithImpl;
@useResult
$Res call({
 DateTime completadoEn, int esfuerzoPercibido
});




}
/// @nodoc
class _$CompletadaCopyWithImpl<$Res>
    implements $CompletadaCopyWith<$Res> {
  _$CompletadaCopyWithImpl(this._self, this._then);

  final Completada _self;
  final $Res Function(Completada) _then;

/// Create a copy of EstadoSesion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? completadoEn = null,Object? esfuerzoPercibido = null,}) {
  return _then(Completada(
null == completadoEn ? _self.completadoEn : completadoEn // ignore: cast_nullable_to_non_nullable
as DateTime,null == esfuerzoPercibido ? _self.esfuerzoPercibido : esfuerzoPercibido // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
