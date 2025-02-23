import 'package:stacked/stacked.dart';
import 'package:stacked_bmi_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:stacked_bmi_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:stacked_bmi_app/ui/views/home/home_view.dart';
import 'package:stacked_bmi_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_bmi_app/ui/views/result/result_view.dart';
import 'package:stacked_bmi_app/services/bmi_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    CustomRoute(
        page: ResultView,
        transitionsBuilder: TransitionsBuilders.slideTop,
        durationInMilliseconds: 2000),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: BmiService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
