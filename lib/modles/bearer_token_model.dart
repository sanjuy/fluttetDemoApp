
class BearerTokenModel {
  String? accessToken;
  String? scope;
  String? apiDomain;
  String? tokenType;
  int? expiresIn;

  BearerTokenModel({
    this.accessToken,
    this.scope,
    this.apiDomain,
    this.tokenType,
    this.expiresIn,
  });

  factory BearerTokenModel.fromJson(Map<String, dynamic> json) =>
      BearerTokenModel(
        accessToken: json["access_token"],
        scope: json["scope"],
        apiDomain: json["api_domain"],
        tokenType: json["token_type"],
        expiresIn: json["expires_in"],
      );

  // Map<String, dynamic> toJson() => {
  //       "access_token": accessToken,
  //       "scope": scope,
  //       "api_domain": apiDomain,
  //       "token_type": tokenType,
  //       "expires_in": expiresIn,
  //     };
}
