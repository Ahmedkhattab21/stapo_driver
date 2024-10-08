
import 'package:stapo_driver/features/register/data/models/get_country_response.dart';

class SelectedCountry {
  GetCountryResponse? selectedCountry;

  SelectedCountry({this.selectedCountry});

  void setSelectedCountry(GetCountryResponse value) {
    selectedCountry = value;
  }

  GetCountryResponse? getSelectedCountry() {
    return selectedCountry;
  }
}
