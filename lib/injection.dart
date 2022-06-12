import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:yummy_lingo/injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureDependencies(String env) {
  $initGetIt(getIt, environment: env);
}
