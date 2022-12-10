import 'package:flutter_datatable/utile/datatime_convert.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  const factory Article({
    /// id
    required String id,

    /// タイトル
    String? title,

    /// 作成日
    @DatetimeConverter() DateTime? createdAt,

    /// 更新日
    @DatetimeConverter() DateTime? updatedAt,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
