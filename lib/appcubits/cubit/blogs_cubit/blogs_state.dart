part of 'blogs_cubit.dart';

@immutable
abstract class BlogsState {}

class BlogsInitial extends BlogsState {}

class FetchPlantLoadingState extends BlogsState {}

class FetchPlantSuccessState extends BlogsState {
  FetchPlantsModel? fetchPlantsModelModel;
  FetchPlantSuccessState(this.fetchPlantsModelModel);
}

class FetchPlantErrorState extends BlogsState {}
