import 'package:chatty_app/core/utiles/constants.dart';
import 'package:dio/dio.dart';

class PaymentMob {
  Future<String> makePayment(int amount) async {
    try {
  String userToken = await _getPaymentToken();
  int id = await _getPaymentId(userToken: userToken, amount: amount.toString());
     String paymentKey =  await _getPaymentKey(userToken, amount, id);
  
  return paymentKey;
} on Exception catch (e) {
  print('expected error: $e');
  rethrow;
}
  }
  
  //step 1

  Future<String> _getPaymentToken() async {
    Dio dio = Dio();
    Response response =
        await dio.post("https://accept.paymob.com/api/auth/tokens", data: {
      "api_key": kApiKey,
    });
    return response.data["token"];
  }

  //step 2

  Future<int> _getPaymentId({
    required String userToken,
    required String amount,
  }) async {
    Dio dio = Dio();
    Response response =
        await dio.post('https://accept.paymob.com/api/ecommerce/orders',
        data: {
         "auth_token": userToken,
         "delivery_needed": "false",// String
         "amount_cents": amount, //<<String>>
         "currency": "EGP",//lazm tkon btd3m el currency
         "items": []
        });

    return response.data['id']; //int
  }

  //step 3

  Future<String> _getPaymentKey(String userToken, int amount, int id) async {
      Dio dio = Dio();
    Response response = await dio.post('https://accept.paymob.com/api/acceptance/payment_keys',
        data: {
          "auth_token": userToken,
          "amount_cents": (amount*100).toString(),
          "expiration": 3600,
          "order_id":id.toString(),
          "billing_data": {
    "apartment": "NA", //Can be not avilable
    "email": "claudette09@exa.com", //required
    "floor": "NA", 
    "first_name": "Clifford", //required
    "street": "NA", 
    "building": "NA", 
    "phone_number": "+86(8)9135210487",//required
    "shipping_method": "NA", 
    "postal_code": "NA", 
    "city": "NA", 
    "country": "NA", 
    "last_name": "Nicolas", //required
    "state": "NA"
  },
          "currency": "EGP",
          "integration_id": kCardIndegrationId,
        }
        
    );
    return response.data["token"];
  }


}
