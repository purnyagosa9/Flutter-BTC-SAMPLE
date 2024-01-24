import 'package:bitcoin_tracker/data/providers/network/api_endpoint.dart';
import 'package:bitcoin_tracker/data/providers/network/api_provider.dart';
import 'package:bitcoin_tracker/data/providers/network/api_request_representable.dart.dart';

enum BTCCurrentPriceType {
  fetchCurrentPrice,
  // fetchOtherPrice, //in other case type
}

class BTCCurrentPriceAPI implements APIRequestRepresentable {
  final BTCCurrentPriceType type;

  BTCCurrentPriceAPI._({required this.type});

  BTCCurrentPriceAPI.fetchCurrentPrice()
      : this._(type: BTCCurrentPriceType.fetchCurrentPrice);

  @override
  String get endpoint => APIEndpoint.baseAPI;

  @override
  String get path {
    switch (type) {
      case BTCCurrentPriceType.fetchCurrentPrice:
        return "/bpi/currentprice.json";
      // case BTCCurrentPriceType.fetchOtherPrice:
      //   return "";
    }
  }

  @override
  HTTPMethod get method {
    return HTTPMethod.get;
  }

  @override
  Map<String, String>? get headers => null;

  @override
  Map<String, String>? get query => null;
  // Map<String, String> get query {
  //   switch (type) {
  //     case BTCCurrentPriceType.fetchCurrentPrice:
  //       return {};
  //   }
  // }

  @override
  get body => null;

  @override
  Future request() {
    return APIProvider.instance.request(this);
  }

  @override
  String get url => endpoint + path;
}
