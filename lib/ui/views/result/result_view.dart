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
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(
            onPressed: viewModel.navigationService.back,
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColors.iconColor,
            )),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25.0),
          child: SizedBox(
            width: double.infinity,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: bmi),
                    duration: const Duration(seconds: 2), // Animation duration
                    builder: (context, double value, child) {
                      return Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            width: 200,
                            height: 200,
                            child: CircularProgressIndicator(
                              value: value / 40, // Assuming max BMI is 40
                              strokeWidth: 10,
                              backgroundColor: AppColors.mainColor,
                              valueColor:
                                  AlwaysStoppedAnimation(viewModel.bmiColor),
                            ),
                          ),
                          Text(
                            value.toStringAsFixed(1),
                            style: GoogleFonts.poppins(
                                fontSize: 52,
                                fontWeight: FontWeight.bold,
                                color: viewModel.bmiColor),
                          ),
                        ],
                      );
                    },
                  ),
                  Text(
                    viewModel.bmiStatus,
                    style: GoogleFonts.poppins(
                        fontSize: 28,
                        fontWeight: FontWeight.normal,
                        color: viewModel.bmiColor),
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        viewModel.bmiDescription,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: AppColors.mainTextColor),
                      ),
                    ),
                  )
                ]),
          ),
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
    viewModel.bmiStringColorSelection();
  }
}
