import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:trading_app/common/injections/injections.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => $initGetIt(getIt);
