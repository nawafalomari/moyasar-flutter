import 'package:moyasar/src/models/payment_type.dart';
import 'package:moyasar/src/models/sources/payment_request_source.dart';

/// Required data to setup a Tokenized Credit Card payment.
///
/// Use only when you need to customize the UI.
class TokenizedCardSource implements PaymentRequestSource {
  @override
  PaymentType type = PaymentType.token;

  late String token;
  late String threeDSecure;
  late String manual;

  TokenizedCardSource(
      {required  this.token,
      required  this.threeDSecure,
      required bool manualPayment}) {
      manual = manualPayment ? 'true' : 'false';
  }

  @override
  Map<String, dynamic> toJson() => {
        'type': type.name,
        'token': token,
        '3ds': threeDSecure,
        'manual': manual
      };
}
