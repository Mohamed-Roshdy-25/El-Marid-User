import 'package:flutter/material.dart';
import 'package:flutter_sixvalley_ecommerce/data/datasource/remote/dio/dio_client.dart';
import 'package:flutter_sixvalley_ecommerce/data/datasource/remote/exception/api_error_handler.dart';
import 'package:flutter_sixvalley_ecommerce/data/model/api_response.dart';
import 'package:flutter_sixvalley_ecommerce/features/app_color/app_color_response.dart';
import 'package:flutter_sixvalley_ecommerce/utill/app_constants.dart';

part 'app_color_state.dart';

class AppColorCubit {
  final DioClient? dioClient;
  AppColorCubit(this.dioClient);

  AppColor? appColor;

  Future<void> getAppColor() async {
    try {
      final response = await dioClient!.get("https://camp-coding.site/elmared/api/v3/seller/auth/get_colors");
      appColor = AppColor.fromJson(response.data);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
