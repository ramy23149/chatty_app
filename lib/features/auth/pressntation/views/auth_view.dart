import 'package:chatty_app/features/auth/pressntation/manager/cubits/facebook_auth_cubit/face_book_auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/auth_repos/auth_repo_impl.dart';
import 'widgets/auth_view_body.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FaceBookAuthCubit(AuthRoposImpl()),
      child: const Scaffold(
        // backgroundColor: kPrimaryColor,
        body: AuthViewBody(),
      ),
    );
  }
}
