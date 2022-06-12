enum ConnectivityState { none, online, offline }

enum JobState { none, pending, executing, completed, revoked, failed }

enum PlayerAction {
  none,
  loading,
  failed,
  playing,
  audition,
  interaction,
  paused,
  completed
}

enum LanguageCategory { language, translation }
