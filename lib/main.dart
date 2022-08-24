import 'package:flutter/material.dart';
import 'package:la_vie/appcubits/cubit/auth_cubit/sign_in/sign_in_cubit.dart';
import 'package:la_vie/appcubits/cubit/auth_cubit/sign_up/sign_up_cubit.dart';
import 'package:la_vie/appcubits/cubit/blogs_cubit/blogs_cubit.dart';
import 'package:la_vie/data/models/auth/sign_in.dart';
import 'package:la_vie/network/remote/dio_helper.dart';
import 'package:la_vie/presentation/screens/layout_auth/layout_auth_screen.dart';

import 'package:la_vie/presentation/screens/main_screen.dart';
import 'package:la_vie/presentation/screens/profile_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_vie/presentation/screens/shop_screen.dart';

import 'data/shared_preferences/cache_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  await DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String? token = CacheHelper.getData(key: SharedKeys.accessToken);

    return MultiBlocProvider(
      providers: [
        BlocProvider<BlogsCubit>(
          create: (context) => BlogsCubit(),
        ),
        BlocProvider<SignInCubit>(
          create: (context) => SignInCubit(),
        ),
        BlocProvider<SignUpCubit>(
          create: (context) => SignUpCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: token == null ? LayoutAuthScreen() : MainScreen(),
      ),
    );
  }
}
