import 'package:benchmark/src/domain/repositories/openid_connect_repository.dart';
import 'package:benchmark/src/presentation/bloc/base/base_cubit.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:openid_client/openid_client_browser.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends BaseCubit<AuthState> {
  AuthCubit(this._openIdConnectRepository) : super(const AuthState.initial());

  final OpenIdConnectRepository _openIdConnectRepository;

  Future<void> initSSO() async {
    try {
      await _openIdConnectRepository.init();
    } catch (e) {
      debugPrint('init OpenId Connect error!');
    }
  }

  Future<void> authorize() async {
    try {
      await _openIdConnectRepository.authorize();
    } catch (e) {
      debugPrint('authorize OpenId Connect error!');
    }
  }

  Future<void> logout() async {
    try {
      await _openIdConnectRepository.logout();
    } catch (e) {
      debugPrint('logout OpenId Connect error!');
    }
  }

  Future<UserInfo?> getUserInfo() async {
    try {
      final credential =
          await _openIdConnectRepository.authenticator?.credential;
      final info = await credential?.getUserInfo();
      return info;
    } catch (e) {
      debugPrint('getUserInfo OpenId Connect error!');
      return null;
    }
  }

  bool isAuthorized() {
    try {
      final credential = _openIdConnectRepository.credential;
      return credential != null;
    } catch (e) {
      return false;
    }
  }

  bool isAccessDenied() {
    try {
      final isDenied = _openIdConnectRepository.isAccessDenied;
      return isDenied;
    } catch (e) {
      return false;
    }
  }
}
