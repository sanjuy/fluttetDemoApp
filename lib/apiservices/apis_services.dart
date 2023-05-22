import 'package:dsdtabs/apiservices/network_manager.dart';
import 'package:dsdtabs/datastorage/userdefaults.dart';
import 'package:dsdtabs/modles/bearer_token_model.dart';
import 'package:dsdtabs/modles/vehicle_model.dart';


class Api {
  Api._();
  static final Api _shared = Api._();
  static Api get shared => _shared;

  getToken() {
    var params = {
      "client_id": "1000.UZY9BWDOJBUHYKERALDHRNJ67BPJ4H",
      "client_secret": "a473f1f84906c556039c39775ff6a56727868534ab",
      "grant_type": "refresh_token",
      "refresh_token":
          "1000.d9c37e9a1be6046a03bf0e6a49d7d3df.6b6cad9e4381672e729a19f4a79b91ee",
    };
    NetworkManager.shared.postRequest(params, (p0) {
      var data = BearerTokenModel.fromJson(p0);
      Storage.shared.saveData("bearer", data.accessToken);
    });
  }


  getVehicleList(Function(List<VehiclesData>) completion) {
    List<VehiclesData> vehicleList = [];
    NetworkManager.shared.getRequest((p0) {
      var data = VehiclesModel.fromJson(p0);
      for (VehiclesData index in data.data ?? []) {
        vehicleList.add(index);
      }
      completion(vehicleList);
    });
  }
}
