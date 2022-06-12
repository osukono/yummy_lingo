// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:just_audio/just_audio.dart' as _i3;
import 'package:sign_in_with_apple/sign_in_with_apple.dart' as _i11;

import 'application/auth/auth_bloc.dart' as _i13;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i10;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'infrastructure/core/audioplayer_injectable_module.dart' as _i14;
import 'infrastructure/core/firebase_injectable_module.dart' as _i15;
import 'infrastructure/moor/moor_database.dart' as _i9;
import 'infrastructure/storage.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final audioPlayerInjectableModule = _$AudioPlayerInjectableModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.AudioPlayer>(
      () => audioPlayerInjectableModule.audioPlayer);
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i7.IAuthFacade>(() =>
      _i8.FirebaseAuthFacade(get<_i4.FirebaseAuth>(), get<_i6.GoogleSignIn>()));
  gh.singleton<_i9.MoorDB>(_i9.MoorDB());
  gh.factory<_i10.SignInBloc>(() => _i10.SignInBloc(get<_i7.IAuthFacade>()));
  gh.lazySingleton<_i11.SignInWithApple>(
      () => firebaseInjectableModule.signInWithApple);
  gh.singleton<_i12.Storage>(_i12.Storage(get<_i9.MoorDB>()));
  gh.factory<_i13.AuthBloc>(() => _i13.AuthBloc(get<_i7.IAuthFacade>()));
  return get;
}

class _$AudioPlayerInjectableModule extends _i14.AudioPlayerInjectableModule {}

class _$FirebaseInjectableModule extends _i15.FirebaseInjectableModule {}
