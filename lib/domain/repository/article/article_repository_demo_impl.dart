import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_datatable/domain/model/article/article.dart';
import 'package:flutter_datatable/domain/repository/article/article_repository.dart';

class ArticleRepositoryDemoImpl implements ArticleRepository {
  @override
  Future<List<Article>> findAll() async {
    final jsonString =
        await rootBundle.loadString('assets/demo_data/data.json');
    final jsonResponse = json.decode(jsonString) as Map<String, dynamic>;
    final jsonList = jsonResponse['article'] as List;
    final articleJsonMapList = jsonList.cast<Map<String, dynamic>>();
    final result = articleJsonMapList.map(Article.fromJson).toList();
    return result;
  }

  @override
  Future<Article> findById(String id) async {
    final articleCategoryList = await findAll();
    final result = articleCategoryList
        .where((articleCategory) => articleCategory.id == id)
        .first;
    return result;
  }
}
