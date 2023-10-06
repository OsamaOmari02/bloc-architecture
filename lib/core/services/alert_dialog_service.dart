import 'package:bloc_architecture/core/services/navigation_service.dart';
import 'package:flutter/material.dart';

import '../../views/shared/themes/light_theme.dart';
import '../../views/shared/utils/media_query_util.dart';

class AlertDialogService {
  static Future<String?>? showBasicAlertDialog({
    required context,
    required String text,
  }) async =>
      await showDialog<String>(
        context: context,
        builder: (BuildContext context) => Directionality(
          textDirection: TextDirection.rtl,
          child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(getHeight(context) * 0.02),
              ),
              elevation: 2,
              backgroundColor: Colors.white,
              title: Image.asset('assets/images/alert_check.png',
                  height: getHeight(context) * 0.06),
              content: FittedBox(
                child: Text(text,
                    style: textStyle(context, Colors.black,
                        getWidth(context) * 0.04, FontWeight.bold)),
              ),
              actions: [
                SizedBox(
                  width: getWidth(context),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(lightFirstColor)),
                      onPressed: () => NavigationService.navigatePop(context),
                      child: Text(
                        'العودة الى الخلف',
                        style: textStyle(
                            context, Colors.white, getWidth(context) * 0.035),
                      )),
                )
              ]),
        ),
      );

  static Future<String?>? showAlertDialogWithOptions({
    required context,
    required String text,
    required VoidCallback onPressed,
  }) async =>
      await showDialog<String>(
        context: context,
        builder: (BuildContext context) => Directionality(
          textDirection: TextDirection.rtl,
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(getHeight(context) * 0.02),
            ),
            elevation: 2,
            backgroundColor: Colors.white,
            title: Image.asset('assets/images/alert_options.png',
                height: getHeight(context) * 0.06),
            content: SizedBox(
              height: getHeight(context) * 0.15,
              child: Column(
                children: [
                  FittedBox(
                    child: Text(text,
                        style: textStyle(context, Colors.black,
                            getWidth(context) * 0.04, FontWeight.bold)),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: getHeight(context) * 0.02),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        lightFirstColor)),
                                onPressed: () {
                                  onPressed();
                                },
                                child: Text(
                                  'نعم',
                                  style: textStyle(context, Colors.white,
                                      getWidth(context) * 0.03),
                                )),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  right: getWidth(context) * 0.02),
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Colors.white,
                                      ),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getHeight(context) *
                                                          0.01),
                                              side: BorderSide(
                                                  color: lightFirstColor)))),
                                  onPressed: () =>
                                      NavigationService.navigatePop(context),
                                  child: Text(
                                    'لا',
                                    style: textStyle(context, lightFirstColor,
                                        getWidth(context) * 0.03),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );

  static Future<bool?> exitApp(BuildContext context) async =>
      await showDialog<bool>(
        context: context,
        builder: (BuildContext context) => Directionality(
          textDirection: TextDirection.rtl,
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(getHeight(context) * 0.02),
            ),
            elevation: 2,
            backgroundColor: Colors.white,
            title: Image.asset('assets/images/alert_options.png',
                height: getHeight(context) * 0.06),
            content: SizedBox(
              height: getHeight(context) * 0.11,
              child: Column(
                children: [
                  FittedBox(
                    child: Text('هل تريد الخروج من التطبيق ؟',
                        style: textStyle(context, Colors.black,
                            getWidth(context) * 0.04, FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: getHeight(context) * 0.02),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      lightFirstColor)),
                              onPressed: () =>
                                  NavigationService.navigateExitApp(),
                              child: Text(
                                'نعم',
                                style: textStyle(context, Colors.white,
                                    getWidth(context) * 0.03),
                              )),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: getWidth(context) * 0.02),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                getHeight(context) * 0.01),
                                            side: BorderSide(
                                                color: lightFirstColor)))),
                                onPressed: () =>
                                    NavigationService.navigatePop(context),
                                child: Text(
                                  'لا',
                                  style: textStyle(context, lightFirstColor,
                                      getWidth(context) * 0.03),
                                )),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );

  static TextStyle textStyle(BuildContext context, color, size, [fontWeight]) =>
      TextStyle(
          fontSize: size,
          fontFamily: 'ArbFONTS-Montserrat-Arabic',
          fontWeight: fontWeight,
          color: color);
}
