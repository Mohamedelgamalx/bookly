import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/models/Book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBook();
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();
}