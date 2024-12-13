part of 'home_page_cubit.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.initial() = _Initial;
  const factory HomePageState.loading() = _Loading;
  const factory HomePageState.success(List<HomePageProduct> products) =
      _Success;
  const factory HomePageState.error(String errorMessage) = _Error;
}
