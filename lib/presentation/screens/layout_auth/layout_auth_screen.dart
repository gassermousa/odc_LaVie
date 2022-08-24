import 'package:flutter/material.dart';
import 'package:la_vie/presentation/screens/layout_auth/sign_up/sign_up_screen.dart';

import 'login/login_screen.dart';

class LayoutAuthScreen extends StatelessWidget {
  const LayoutAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Image.asset(
                'assets/images/top_right_flower.png',
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomStart,
              child: Image.asset(
                'assets/images/bottom_left_flower.png',
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 20, 0, 0),
                  child: TabBar(
                    indicatorColor: Colors.green.withOpacity(.8),
                    unselectedLabelStyle:
                        TextStyle(color: Colors.black.withOpacity(.5)),
                    unselectedLabelColor: Colors.black.withOpacity(.4),
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: Colors.green.withOpacity(.8),
                    tabs: const [
                      Tab(
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: TabBarView(
                    children: [
                      SignUpMobileScreen(),
                      LoginMobileScreen(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
