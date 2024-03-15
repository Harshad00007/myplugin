import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.nonReactive(
      builder: (context, viewModel, child) => Scaffold(
      body:
      Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: "email",
                    border: OutlineInputBorder()),
              ),
              TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ],
          ),
        ),
      ),

      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}

class TitleSection extends ViewModelWidget<HomeViewModel> {
  const TitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Title: ${viewModel.counter}',
          style: TextStyle(fontSize: 20.sp),
        ),
      ],
    );
  }
}
