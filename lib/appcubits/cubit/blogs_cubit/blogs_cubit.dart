import 'package:bloc/bloc.dart';
import 'package:la_vie/data/models/plants/fetch.dart';
import 'package:la_vie/network/remote/dio_helper.dart';
import 'package:meta/meta.dart';

import '../../../network/remote/end_points.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'blogs_state.dart';

class BlogsCubit extends Cubit<BlogsState> {
  BlogsCubit() : super(BlogsInitial());

  static BlogsCubit get(context) => BlocProvider.of(context);
  FetchPlantsModel? fetchPlantsModelModel;

  void getFetchPlantsModel() {
    print('BlogsCubit');
    emit(FetchPlantLoadingState());
    DioHelper.getData(
      urlEndPoint: EndPoint.fetchAllBlogs,
    ).then((value) {
      print(value.data['type']);

      fetchPlantsModelModel = FetchPlantsModel.fromJson(value.data);
      emit(FetchPlantSuccessState(value.data));
    }).catchError((error) {
      emit(FetchPlantErrorState());
    });
  }
}
