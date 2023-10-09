import 'package:gql_http_link/gql_http_link.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:hive/hive.dart';
import 'package:hive_local_storage/hive_local_storage.dart';
import 'package:injectable/injectable.dart';
// *** If using flutter ***
// import 'package:hive_flutter/hive_flutter.dart';

@LazySingleton()
class FerryClientRepository {
  Future<Client> initClient() async {
    final String authToken =
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1MWU5NTNkOTUyODgyNWVlM2E2ZTZiNyIsImVtYWlsIjoicHJhYmluLmxhbXNhbEBlYnBlYXJscy5jb20iLCJpYXQiOjE2OTY4MjIwNjEsImV4cCI6MTY5Njg0NzI2MX0.fpRW9l_npKvti7--k6gugqkiahaNmZuWcqmgGBZ1bv0';

    Hive.init('hive_data');
    await Hive.initFlutter();
    final box = await Hive.openBox('graphql');

    final store = HiveStore(box);
    final cache = Cache(store: store);

    final link = HttpLink(
      'https://a469-202-166-198-75.ngrok-free.app/graphql',
      defaultHeaders: {
        'Authorization': '$authToken',
      },
    );
    final client = Client(
      link: link,
      //  cache: cache
    );
    return client;
  }
}
