import 'package:http/http.dart';

void findAll() async {
  final Response response = await get('http://172.16.103.73:8080/transactions');
  print(response.body);
}