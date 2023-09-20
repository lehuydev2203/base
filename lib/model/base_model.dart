class BaseModel {
  bool isSuccess = false;
  bool isError = false;
  bool isLogin = false;

  bool getStatusSuccess() => isSuccess;
  bool getStatusError() => isError;
  bool getisLogin() => isLogin;
}
