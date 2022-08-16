import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_vie/data/models/auth/sign_up.dart';
import 'package:la_vie/data/repository/repository_helper.dart';
import 'package:la_vie/network/remote/dio_helper.dart';

import 'sign_up_states.dart';

class SignUpCubit extends Cubit<SingUpStates> {
  SignUpCubit() : super(SingUpInitialState());

  static SignUpCubit get(context) => BlocProvider.of(context);

  late SignUp signUpModel;

  void signUp({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) {
    emit(SignUpLoadingState());
    RepositoryHelper(DioHelper())
        .signUp(
      email: email,
      password: password,
      firstName: firstName,
      lastName: lastName,
    )
        .then((value) {
      signUpModel = value;
      print(signUpModel.type);
      emit(SignUpSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(SignUpErrorState());
    });
  }
}
