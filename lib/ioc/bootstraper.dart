import 'package:dioc/dioc.dart';
import 'package:what_when_where/ioc/container.dart';
import 'package:what_when_where/services/analytics.dart';

class Bootstrapper {
  static final Bootstrapper _instance = Bootstrapper._();

  factory Bootstrapper() => _instance;

  Bootstrapper._();

  Container get _container => WWWIoC.container;

  void init() {
    _container.register<IAnalyticsService>((c) => AnalyticsService.ioc(),
        defaultMode: InjectMode.singleton);
  }
}