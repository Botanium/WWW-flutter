import 'package:injectable/injectable.dart';
import 'package:share/share.dart';

abstract class ISharingService {
  void share(String text);
}

@lazySingleton
@RegisterAs(ISharingService)
class SharingService implements ISharingService {
  @override
  void share(String text) {
    Share.share(text);
  }
}
