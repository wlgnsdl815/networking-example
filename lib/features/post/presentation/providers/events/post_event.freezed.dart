// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostEvent()';
}


}

/// @nodoc
class $PostEventCopyWith<$Res>  {
$PostEventCopyWith(PostEvent _, $Res Function(PostEvent) __);
}


/// Adds pattern-matching-related methods to [PostEvent].
extension PostEventPatterns on PostEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchPosts value)?  fetchPosts,TResult Function( _FetchPostsByUserId value)?  fetchPostsByUserId,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchPosts() when fetchPosts != null:
return fetchPosts(_that);case _FetchPostsByUserId() when fetchPostsByUserId != null:
return fetchPostsByUserId(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchPosts value)  fetchPosts,required TResult Function( _FetchPostsByUserId value)  fetchPostsByUserId,}){
final _that = this;
switch (_that) {
case _FetchPosts():
return fetchPosts(_that);case _FetchPostsByUserId():
return fetchPostsByUserId(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchPosts value)?  fetchPosts,TResult? Function( _FetchPostsByUserId value)?  fetchPostsByUserId,}){
final _that = this;
switch (_that) {
case _FetchPosts() when fetchPosts != null:
return fetchPosts(_that);case _FetchPostsByUserId() when fetchPostsByUserId != null:
return fetchPostsByUserId(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchPosts,TResult Function( int userId)?  fetchPostsByUserId,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchPosts() when fetchPosts != null:
return fetchPosts();case _FetchPostsByUserId() when fetchPostsByUserId != null:
return fetchPostsByUserId(_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchPosts,required TResult Function( int userId)  fetchPostsByUserId,}) {final _that = this;
switch (_that) {
case _FetchPosts():
return fetchPosts();case _FetchPostsByUserId():
return fetchPostsByUserId(_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchPosts,TResult? Function( int userId)?  fetchPostsByUserId,}) {final _that = this;
switch (_that) {
case _FetchPosts() when fetchPosts != null:
return fetchPosts();case _FetchPostsByUserId() when fetchPostsByUserId != null:
return fetchPostsByUserId(_that.userId);case _:
  return null;

}
}

}

/// @nodoc


class _FetchPosts implements PostEvent {
  const _FetchPosts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchPosts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostEvent.fetchPosts()';
}


}




/// @nodoc


class _FetchPostsByUserId implements PostEvent {
  const _FetchPostsByUserId(this.userId);
  

 final  int userId;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchPostsByUserIdCopyWith<_FetchPostsByUserId> get copyWith => __$FetchPostsByUserIdCopyWithImpl<_FetchPostsByUserId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchPostsByUserId&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'PostEvent.fetchPostsByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$FetchPostsByUserIdCopyWith<$Res> implements $PostEventCopyWith<$Res> {
  factory _$FetchPostsByUserIdCopyWith(_FetchPostsByUserId value, $Res Function(_FetchPostsByUserId) _then) = __$FetchPostsByUserIdCopyWithImpl;
@useResult
$Res call({
 int userId
});




}
/// @nodoc
class __$FetchPostsByUserIdCopyWithImpl<$Res>
    implements _$FetchPostsByUserIdCopyWith<$Res> {
  __$FetchPostsByUserIdCopyWithImpl(this._self, this._then);

  final _FetchPostsByUserId _self;
  final $Res Function(_FetchPostsByUserId) _then;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_FetchPostsByUserId(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
