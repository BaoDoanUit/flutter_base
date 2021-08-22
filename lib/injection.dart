import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
// ignore: await_only_futures
Future<void> configureDependencies() async => await $initGetIt(getIt);
