import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:trading_app/common/router/router.gr.dart';

@module
abstract class ThirdPartyModule {
  AppRouter get route => AppRouter();

  Logger get logger => Logger();
}
