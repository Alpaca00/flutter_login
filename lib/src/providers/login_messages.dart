import 'package:flutter/material.dart';

class LoginMessages with ChangeNotifier {
  LoginMessages({
    this.userHint,
    this.passwordHint = defaultPasswordHint,
    this.confirmPasswordHint = defaultConfirmPasswordHint,
    this.forgotPasswordButton = defaultForgotPasswordButton,
    this.loginButton = defaultLoginButton,
    this.signupButton = defaultSignupButton,
    this.recoverPasswordButton = defaultRecoverPasswordButton,
    this.recoverPasswordIntro = defaultRecoverPasswordIntro,
    this.recoverPasswordDescription = defaultRecoverPasswordDescription,
    this.goBackButton = defaultGoBackButton,
    this.confirmPasswordError = defaultConfirmPasswordError,
    this.recoverPasswordSuccess = defaultRecoverPasswordSuccess,
    this.flushbarTitleError = defaultflushbarTitleError,
    this.flushbarTitleSuccess = defaultflushbarTitleSuccess,
    this.signUpSuccess = defaultSignUpSuccess,
    this.providersTitleFirst = defaultProvidersTitleFirst,
    this.providersTitleSecond = defaultProvidersTitleSecond,
    this.additionalSignUpSubmitButton = defaultAdditionalSignUpSubmitButton,
    this.additionalSignUpFormDescription =
        defaultAdditionalSignUpFormDescription,
    this.confirmSignupIntro = defaultConfirmSignupIntro,
    this.confirmationCodeHint = defaultConfirmationCodeHint,
    this.confirmationCodeValidationError =
        defaultConfirmationCodeValidationError,
    this.resendCodeButton = defaultResendCodeButton,
    this.resendCodeSuccess = defaultResendCodeSuccess,
    this.confirmSignupButton = defaultConfirmSignupButton,
    this.confirmSignupSuccess = defaultConfirmSignupSuccess,
    this.confirmRecoverIntro = defaultConfirmRecoverIntro,
    this.recoveryCodeHint = defaultRecoveryCodeHint,
    this.recoveryCodeValidationError = defaultRecoveryCodeValidationError,
    this.setPasswordButton = defaultSetPasswordButton,
    this.confirmRecoverSuccess = defaultConfirmRecoverSuccess,
    this.recoverCodePasswordDescription = defaultRecoverCodePasswordDescription,
  });

  static const defaultPasswordHint = 'Пароль';
  static const defaultConfirmPasswordHint = 'Підтвердіть пароль';
  static const defaultForgotPasswordButton = 'Забули пароль?';
  static const defaultLoginButton = 'УВІЙТИ';
  static const defaultSignupButton = 'ЗАРЕЄСТРУВАТИСЯ';
  static const defaultRecoverPasswordButton = 'ВІДНОВИТИ';
  static const defaultRecoverPasswordIntro = 'Скидання пароля';
  static const defaultRecoverPasswordDescription =
      'Ми надішлемо ваш пароль у відкритому вигляді на цю електронну пошту.';
  static const defaultRecoverCodePasswordDescription =
      'Ми надішлемо код для відновлення пароля на вашу електронну пошту.';
  static const defaultGoBackButton = 'НАЗАД';
  static const defaultConfirmPasswordError = 'Паролі не збігаються!';
  static const defaultRecoverPasswordSuccess = 'Лист надіслано на електронну пошту';
  static const defaultflushbarTitleSuccess = 'Успішно';
  static const defaultflushbarTitleError = 'Помилка';
  static const defaultSignUpSuccess = 'Посилання для активації надіслано';
  static const defaultProvidersTitleFirst = 'або увійдіть через';
  static const defaultProvidersTitleSecond = 'або';
  static const defaultAdditionalSignUpSubmitButton = 'ПІДТВЕРДИТИ';
  static const defaultAdditionalSignUpFormDescription =
      'Будь ласка, заповніть цю форму для завершення реєстрації';

  static const defaultConfirmRecoverIntro =
      'Код для відновлення пароля надіслано на вашу електронну пошту.';
  static const defaultRecoveryCodeHint = 'Код відновлення';
  static const defaultRecoveryCodeValidationError = 'Код відновлення не заповнено';
  static const defaultSetPasswordButton = 'ВСТАНОВИТИ ПАРОЛЬ';
  static const defaultConfirmRecoverSuccess = 'Пароль відновлено.';
  static const defaultConfirmSignupIntro =
      'Код підтвердження надіслано на вашу електронну пошту. '
      'Будь ласка, введіть його для підтвердження акаунту.';
  static const defaultConfirmationCodeHint = 'Код підтвердження';
  static const defaultConfirmationCodeValidationError =
      'Код підтвердження не заповнено';
  static const defaultResendCodeButton = 'Надіслати код ще раз';
  static const defaultResendCodeSuccess = 'Новий лист надіслано.';
  static const defaultConfirmSignupButton = 'ПІДТВЕРДИТИ';
  static const defaultConfirmSignupSuccess = 'Акаунт підтверджено.';

  /// Hint text of the userHint [TextField]
  /// Default will be selected based on userType
  final String? userHint;

  /// Additional signup form button's label
  final String additionalSignUpSubmitButton;

  /// Description in the additional signup form
  final String additionalSignUpFormDescription;

  /// Hint text of the password [TextField]
  final String passwordHint;

  /// Hint text of the confirm password [TextField]
  final String confirmPasswordHint;

  /// Forgot password button's label
  final String forgotPasswordButton;

  /// Login button's label
  final String loginButton;

  /// Signup button's label
  final String signupButton;

  /// Recover password button's label
  final String recoverPasswordButton;

  /// Intro in password recovery form
  final String recoverPasswordIntro;

  /// Description in password recovery form, shown when the onConfirmRecover
  /// callback is not provided
  final String recoverPasswordDescription;

  /// Go back button's label. Go back button is used to go back to to
  /// login/signup form from the recover password form
  final String goBackButton;

  /// The error message to show when the confirm password not match with the
  /// original password
  final String confirmPasswordError;

  /// The success message to show after submitting recover password
  final String recoverPasswordSuccess;

  /// Title on top of Flushbar on errors
  final String flushbarTitleError;

  /// Title on top of Flushbar on successes
  final String flushbarTitleSuccess;

  /// The success message to show after signing up
  final String signUpSuccess;

  /// The string shown above the Providers buttons
  final String providersTitleFirst;

  /// The string shown above the Providers icons
  final String providersTitleSecond;

  /// The intro text for the confirm recover password card
  final String confirmRecoverIntro;

  /// Hint text of the password recovery code [TextField]
  final String recoveryCodeHint;

  /// The validation error message  to show for an empty recovery code
  final String recoveryCodeValidationError;

  /// Set password button's label for password recovery confirmation
  final String setPasswordButton;

  /// The success message to show after confirming recovered password
  final String confirmRecoverSuccess;

  /// The intro text for the confirm signup card
  final String confirmSignupIntro;

  /// Hint text of the confirmation code for confirming signup
  final String confirmationCodeHint;

  /// The validation error message to show for an empty confirmation code
  final String confirmationCodeValidationError;

  /// Resend code button's label
  final String resendCodeButton;

  /// The success message to show after resending confirmation code
  final String resendCodeSuccess;

  /// Confirm signup button's label
  final String confirmSignupButton;

  /// The success message to show after confirming signup
  final String confirmSignupSuccess;

  /// Description in password recovery form, shown when the onConfirmRecover
  /// callback is provided
  final String recoverCodePasswordDescription;
}
