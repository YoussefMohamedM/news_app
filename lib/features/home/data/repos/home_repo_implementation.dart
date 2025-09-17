import 'package:dartz/dartz.dart';
import 'package:news_app/core/errors/failure.dart';
import 'package:news_app/core/services/api_service.dart';
import 'package:news_app/features/home/data/models/news_model/news_model.dart';
import 'package:news_app/features/home/data/repos/home_repo.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplementation(this.apiService);

  @override
  Future<Either<Failure, List<NewsModel>>> getNews({
    required String category,
  }) async {
    try {
      Map<String, dynamic> data = await apiService.get(category: category);
      List<dynamic> articles = data["articles"];
      List<NewsModel> news = [];

      for (var article in articles) {
        news.add(NewsModel.fromJson(article));
      }

      return right(news);
    } on Exception catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
