import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_bmi_app/ui/common/app_colors.dart';

import 'result_viewmodel.dart';

class ResultView extends StackedView<ResultViewModel> {
  final double bmi;
  const ResultView({required this.bmi, Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ResultViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: InkWell(
              onTap: viewModel.navigationService.back,
              child: Text(
                "Back",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: wTPrimaryTextColor,
                ),
              )),
        ),
      ),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: bmi),
          duration: const Duration(seconds: 2), // Animation duration
          builder: (context, double value, child) {
            return Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: CircularProgressIndicator(
                    value: value / 40, // Assuming max BMI is 40
                    strokeWidth: 10,
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation(viewModel.bmiColor),
                  ),
                ),
                Text(
                  value.toStringAsFixed(1),
                  style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: viewModel.bmiColor),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  ResultViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ResultViewModel();

  @override
  void onViewModelReady(ResultViewModel viewModel) {
    // TODO: implement onViewModelReady
    super.onViewModelReady(viewModel);
    viewModel.bmiColorSelection();
  }
}
