class DomainUser {
  static const NAME = 'name';
  static const TOKEN = 'token';
  static const PHOTO = 'photo';
  static const EMAIL = 'email';
  static const PLAYER_VERSION = 'player_version';
  static const LANGUAGE_LEARN_ID = 'l_learn_id';
  static const LANGUAGE_SPEAK_ID = 'l_speak_id';
  // static const IS_ANONYMOUS = 'is_anonymous';

  String id;
  // bool isAnonymous;
  String? name;
  String? token;
  String? photo;
  String? email;
  String? language;
  String? translation;

  DomainUser({
    required this.id,
    // required this.isAnonymous,
    this.name,
    this.token,
    this.photo,
    this.email,
    this.language,
    this.translation,
  });

  factory DomainUser.fromJson(String id, {required Map<String, dynamic> data}) {
    return DomainUser(
      id: id,
      // isAnonymous: data[IS_ANONYMOUS] ?? false,
      name: data[NAME],
      token: data[TOKEN],
      photo: data[PHOTO],
      email: data[EMAIL],
      language: data[LANGUAGE_LEARN_ID],
      translation: data[LANGUAGE_SPEAK_ID],
    );
  }

  Map<String, dynamic> toJson() => {
        // IS_ANONYMOUS: isAnonymous,
        NAME: name,
        TOKEN: token,
        PHOTO: photo,
        EMAIL: email,
        LANGUAGE_LEARN_ID: language,
        LANGUAGE_SPEAK_ID: translation,
      }..removeWhere((key, value) => value == null);
}
