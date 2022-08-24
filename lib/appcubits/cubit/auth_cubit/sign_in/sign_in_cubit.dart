import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_vie/appcubits/cubit/auth_cubit/sign_in/sign_in_states.dart';
import 'package:la_vie/data/models/auth/sign_in.dart';
import 'package:la_vie/data/shared_preferences/cache_helper.dart';
import 'package:la_vie/network/remote/dio_helper.dart';
import 'package:la_vie/network/remote/end_points.dart';
import 'package:la_vie/presentation/constant/navigator.dart';
import 'package:la_vie/presentation/screens/main_screen.dart';

import '../../../../presentation/screens/layout_auth/login/login_screen.dart';

class SignInCubit extends Cubit<SingInStates> {
  SignInCubit() : super(SingInInitialState());

  static SignInCubit get(context) => BlocProvider.of(context);

  late SignIn signInModel;

  void signIn(context, {required String email, required String password}) {
    emit(SignInLoadingState());
    DioHelper.postData(
      url: EndPoint.loginWithEmail,
      data: {
        'email': email,
        'password': password,
      },
    ).then((value) {
      signInModel = SignIn.fromJson(value.data);
      CacheHelper.saveData(
        key: SharedKeys.accessToken,
        value: signInModel.data!.accessToken,
      ).then((value) {
        defaultNavigateAndFinish(context, const MainScreen());
      });

      emit(SignInSuccessState());
    }).catchError((error) {
      if (error is DioError) {
        print(
            'error when getting sign in data ${error.response!.data['message']}');
      }
      emit(SignInErrorState());
    });
  }
}
