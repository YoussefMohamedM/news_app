import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/data/repos/home_repo.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  final HomeRepo homeRepo;

  NewsCubit(this.homeRepo) : super(NewsInitial());

  Future<void> getNews({required String category}) async {
    emit(NewsLoading());
    var news = await homeRepo.getNews(category: category);
    news.fold(
      (failure) => emit(NewsFailure(failure.errorMessage)),
      (news) => emit(NewsSuccess()),
    );
  }
}
