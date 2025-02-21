import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_bmi_app/ui/common/app_colors.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: wTBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //Heading
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 0,
                children: [
                  Text(
                    "Welcome",
                    style: GoogleFonts.poppins(fontSize: 18),
                  ),
                  Text(
                    "BMI Calculator",
                    style: GoogleFonts.poppins(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              //Gender Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          side: BorderSide.none,
                          backgroundColor: wTPrimaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            Icons.male,
                            size: 22,
                            color: wTSecondaryColor,
                          ),
                          Text(
                            "Male",
                            style: GoogleFonts.poppins(
                              color: wTSecondaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: wTSecondaryColor,
                          side: BorderSide.none,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            Icons.female,
                            size: 22,
                            color: wTPrimaryColor,
                          ),
                          Text(
                            "Female",
                            style: GoogleFonts.poppins(
                              color: wTPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              //Weight and Age Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Container(
                        color: wTSecondaryColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Weight",
                              style:
                                  GoogleFonts.poppins(color: wTLightTextColor),
                            ),
                            Text(
                              "70",
                              style: GoogleFonts.poppins(
                                  fontSize: 46, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                      shape: WidgetStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5))),
                                      backgroundColor: WidgetStateProperty.all(
                                          wTPrimaryColor)),
                                  icon: const Icon(
                                    Icons.remove,
                                    color: wTSecondaryColor,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                      shape: WidgetStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5))),
                                      backgroundColor: WidgetStateProperty.all(
                                          wTPrimaryColor)),
                                  icon: const Icon(
                                    Icons.add,
                                    color: wTSecondaryColor,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Container(
                        color: wTSecondaryColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Age",
                              style:
                                  GoogleFonts.poppins(color: wTLightTextColor),
                            ),
                            Text(
                              "23",
                              style: GoogleFonts.poppins(
                                  fontSize: 46, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                      shape: WidgetStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5))),
                                      backgroundColor: WidgetStateProperty.all(
                                          wTPrimaryColor)),
                                  icon: const Icon(
                                    Icons.remove,
                                    color: wTSecondaryColor,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                      shape: WidgetStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5))),
                                      backgroundColor: WidgetStateProperty.all(
                                          wTPrimaryColor)),
                                  icon: const Icon(
                                    Icons.add,
                                    color: wTSecondaryColor,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.width * 0.5,
                  color: wTSecondaryColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Height",
                        style: GoogleFonts.poppins(color: wTLightTextColor),
                      ),
                      Text(
                        viewModel.heightValue.round().toString(),
                        style: GoogleFonts.poppins(
                            fontSize: 46, fontWeight: FontWeight.bold),
                      ),
                      Slider(
                        activeColor: wTPrimaryColor,
                        value: viewModel.heightValue,
                        max: 200,
                        min: 0,
                        inactiveColor: wTSecondaryColor,
                        secondaryActiveColor: wTPrimaryColor,
                        divisions: 40,
                        label: viewModel.heightValue.round().toString(),
                        onChanged: viewModel.onHeightChanged,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: wTPrimaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: Text(
                    "Let's Go",
                    style: GoogleFonts.poppins(color: wTSecondaryTextColor),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
