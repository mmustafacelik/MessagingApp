import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
          'message': "Trying",
          'email': "Please enter your email address",
          'login': "Login",
          'password': "Please enter your password",
          'againpassword': "Please again enter your password",
          'app': "This app is ",
          'fast': "FAST ",
          'safe': "SAFE",
          'free': "FREE",
          'new to': "New to",
          'registery': "Create new account.",
          'registeryButtonText': "Registry",
          'emailError': "Please enter valid email address",
          'emailErrorTitle': "Email Error",
          'passwordError': "The passwords you entered do not match",
          'passwordErrorTitle': "Password Error",
          'forgotPassword': "Forgot your password?",
          'resetPassword': "Reset Password",
          'successfulyEmailTitle': "Email Sent",
          'successfulyEmail':
              "Password reset link has been sent to the e-mail you wrote.",
        },
        'tr_TR': {
          'hello': "Merhabalar",
          'message': "Deneme",
          'email': "Lütfen email adresini giriniz",
          'password': "Lütfen şifrenizi giriniz",
          'againpassword': "Lütfen şifrenizi yeniden giriniz",
          'login': "Giriş Yap",
          'app': "Bu uygulama ",
          'fast': "HIZLI",
          'safe': "GÜVENLİ",
          'free': "ÜCRETSİZ",
          'new to': "Yeni üye misiniz?",
          'registery': "Kayıt Olun.",
          'registeryButtonText': "Kayıt Ol",
          'emailError': "Lütfen geçerli bir email giriniz",
          'emailErrorTitle': "Email Hatası",
          'passwordError': "Girdiğiniz şifreler eşleşmiyor",
          'passwordErrorTitle': "Şifre Hatası",
          'forgotPassword': "Şifrenizi mi unuttunuz?",
          'resetPassword': "Şifre Sıfırla",
          'successfulyEmailTitle': "E-posta Gönderildi",
          'successfulyEmail':
              "Yazdığınız e-postaya şifre sıfırlama linki gönderilmiştir.",
        }
      };
}
