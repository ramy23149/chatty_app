import 'package:chatty_app/features/home/presentaion/views/widgets/navigation_contaner.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 20,
        ),
       NaviegatContaner()
      ],
    );
  }
}