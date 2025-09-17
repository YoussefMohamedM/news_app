import 'package:dartz/dartz.dart';
import 'package:news_app/features/home/data/models/news_model/news_model.dart';

import '../../../../core/errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<NewsModel>>> getNews({required String category});
}
