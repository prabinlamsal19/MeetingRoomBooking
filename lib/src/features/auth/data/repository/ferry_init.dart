import 'package:gql_http_link/gql_http_link.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:hive/hive.dart';
import 'package:hive_local_storage/hive_local_storage.dart';
// *** If using flutter ***
// import 'package:hive_flutter/hive_flutter.dart';

class FerryClientRepository {
  Future<Client> initClient() async {
    Hive.init('hive_data');
    await Hive.initFlutter();
    final box = await Hive.openBox('graphql');

    final store = HiveStore(box);

    final cache = Cache(store: store);

    final link = HttpLink('https://f856-202-166-198-75.ngrok-free.app/graphql');

    final client = Client(
      link: link,
      cache: cache,
    );
    return client;
  }
}
