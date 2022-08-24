import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:la_vie/appcubits/cubit/auth_cubit/sign_in/sign_in_cubit.dart';
import 'package:la_vie/appcubits/cubit/auth_cubit/sign_in/sign_in_states.dart';
import 'package:la_vie/presentation/componentes/btns.dart';
import 'package:la_vie/presentation/componentes/widgets.dart';

class LoginMobileScreen extends StatelessWidget {
  const LoginMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return BlocConsumer<SignInCubit, SingInStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = SignInCubit.get(context);
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  DefaultFormField(
                    maxLines: 1,
                    textInputType: TextInputType.emailAddress,
                    header: 'Email',
                    controller: emailController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DefaultFormField(
                    maxLines: 1,
                    textInputType: TextInputType.emailAddress,
                    header: 'Password',
                    controller: passwordController,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  (state is SignInLoadingState)
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: Colors.green,
                          ),
                        )
                      : customBtn(
                          hight: 50.0,
                          text: 'Login',
                          width: double.infinity,
                          onpress: () {
                            cubit.signIn(context,
                                email: emailController.text,
                                password: passwordController.text);
                          }),
                  Row(
                    children: [
                      const Expanded(
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'or continue with',
                          style: TextStyle(
                            color: HexColor('FF#6F6F6F'),
                            fontSize: 12,
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const DefaultOrLoginWith(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
