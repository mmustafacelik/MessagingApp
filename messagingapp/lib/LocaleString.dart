import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
          'message': "Trying",
          'email': "Plase enter your email address",
          'login': "Login",
          'password': "Plase enter your password",
          'app': "This app is ",
          'fast': "FAST ",
          'safe': "SAFE",
          'transparent': "TRANSPARENT",
          'new to': "New to",
          'registery': "Create new account."
        },
        'tr_TR': {
          'hello': "Merhabalar",
          'message': "Deneme",
          'email': "Lütfen email adresini giriniz",
          'password': "Lütfen şifrenizi giriniz",
          'login': "Giriş Yap",
          'app': "Bu uygulama ",
          'fast': "HIZLI",
          'safe': "GÜVENLİ",
          'transparent': "ŞEFFAF",
          'new to': "Yeni üye misiniz?",
          'registery': "Kayıt Olun.",
        }
      };
}
