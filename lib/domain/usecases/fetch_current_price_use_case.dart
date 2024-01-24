import 'package:bitcoin_tracker/app/core/usecases/no_param_usecase.dart';
import 'package:bitcoin_tracker/data/models/btc_current_price_model.dart';
import 'package:bitcoin_tracker/domain/repositories/btc_current_price_repository.dart';

class FetchCurrentPriceUseCase extends NoParamUseCase<BTCCurrentPriceModel> {
  final BTCCurrentPrictRepository _repo;
  FetchCurrentPriceUseCase(this._repo);

  @override
  Future<BTCCurrentPriceModel> execute() {
    return _repo.fetchCurrentPrice();
  }
}
