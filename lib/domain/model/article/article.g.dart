// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Article _$$_ArticleFromJson(Map<String, dynamic> json) => _$_Article(
      id: json['id'] as String,
      title: json['title'] as String,
      createdAt:
          const DatetimeConverter().fromJson(json['createdAt'] as String),
      updatedAt:
          const DatetimeConverter().fromJson(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'createdAt': const DatetimeConverter().toJson(instance.createdAt),
      'updatedAt': const DatetimeConverter().toJson(instance.updatedAt),
    };
