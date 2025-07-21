import 'package:technical_test/model/product_model.dart';

abstract class GetDataState {}

class GetInitial extends GetDataState {}

class GetLoading extends GetDataState {}

class GetLoaded extends GetDataState {
  final TopProductResponse post;

  GetLoaded(this.post);
}

class PostError extends GetDataState {
  final String message;

  PostError(this.message);
}
