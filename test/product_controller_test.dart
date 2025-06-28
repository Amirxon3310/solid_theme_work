import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:solid_theme_work/controller/product_controller.dart';
import 'product_controller_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group('ProductController Test', () {
    test('getProducts loads products correctly', () async {
      final client = MockClient();

      final fakeJson = jsonEncode({
        '0': {
          'id': 1,
          'name_uz': 'Test Product',
          'price': '15000000.00',
          'color': '#050505',
          'qty': 10,
          'discounted_price': '12000000.00',
        }
      });

      when(client.get(any))
          .thenAnswer((_) async => http.Response(fakeJson, 200));

      final controller = ProductController(client: client);

      await controller.getProducts("20000000");

      expect(controller.products.length, 1);
      expect(controller.products.first.nameUz, 'Test Product');
      expect(controller.loading, false);
    });
  });
}
