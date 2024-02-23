import 'package:bukki/core/errors/failure.dart';
import 'package:bukki/core/use_cases/noParam_use_case.dart';
import 'package:bukki/features/home/domain/entities/book_entity.dart';
import 'package:bukki/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>> {
  final HomeRepo homeRepo;
  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call() async {
    return await homeRepo.fetchFeaturedBooks();
  }
}
