import 'package:flutter_datatable/domain/model/article/article.dart';

abstract class ArticleRepository {
  Future<List<Article>> findAll();
  Future<Article> findById(String id);
}
