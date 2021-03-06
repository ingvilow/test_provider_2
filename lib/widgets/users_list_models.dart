import 'package:elementary/elementary.dart';
import 'package:test_provider_2/models/user.dart';
import 'package:test_provider_2/service/user_service.dart';

//сервис для того, чтобы забрать из АПИ пользователей
class UsersListModel extends ElementaryModel {
  final ApiService _apiService;

  UsersListModel(
    this._apiService,
  );

  Future<List<Users>> getUser() async {
    return _apiService.fetchHero();
  }
}
