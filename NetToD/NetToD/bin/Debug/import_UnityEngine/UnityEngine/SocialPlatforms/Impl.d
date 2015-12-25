module UnityEngine.SocialPlatforms.Impl;
import UnityEngine.SocialPlatforms;
import System;
import UnityEngine;
public:
pragma(assembly,"UnityEngine"){
class LocalUser : UnityEngine.SocialPlatforms.Impl.UserProfile{
this ();
Void SetFriends(UnityEngine.SocialPlatforms.IUserProfile[]);
Void SetAuthenticated(System.Boolean);
Void SetUnderage(System.Boolean);
IUserProfile[] get_friends();
Boolean get_authenticated();
Boolean get_underage();
}
class UserProfile : System.Object{
this ();
this (System.String,System.String,System.Boolean);
this (System.String,System.String,System.Boolean,UnityEngine.SocialPlatforms.UserState,UnityEngine.Texture2D);
String ToString();
Void SetUserName(System.String);
Void SetUserID(System.String);
Void SetImage(UnityEngine.Texture2D);
Void SetIsFriend(System.Boolean);
Void SetState(UnityEngine.SocialPlatforms.UserState);
String get_userName();
String get_id();
Boolean get_isFriend();
UserState get_state();
Texture2D get_image();
}
class Achievement : System.Object{
this (System.String,System.Double,System.Boolean,System.Boolean,System.DateTime);
this (System.String,System.Double);
this ();
String ToString();
Void SetCompleted(System.Boolean);
Void SetHidden(System.Boolean);
Void SetLastReportedDate(System.DateTime);
String get_id();
Void set_id(System.String);
Double get_percentCompleted();
Void set_percentCompleted(System.Double);
Boolean get_completed();
Boolean get_hidden();
DateTime get_lastReportedDate();
}
class AchievementDescription : System.Object{
this (System.String,System.String,UnityEngine.Texture2D,System.String,System.String,System.Boolean,System.Int32);
String ToString();
Void SetImage(UnityEngine.Texture2D);
String get_id();
Void set_id(System.String);
String get_title();
Texture2D get_image();
String get_achievedDescription();
String get_unachievedDescription();
Boolean get_hidden();
Int32 get_points();
}
class Score : System.Object{
this ();
this (System.String,System.Int64);
this (System.String,System.Int64,System.String,System.DateTime,System.String,System.Int32);
String ToString();
Void SetDate(System.DateTime);
Void SetFormattedValue(System.String);
Void SetUserID(System.String);
Void SetRank(System.Int32);
String get_leaderboardID();
Void set_leaderboardID(System.String);
Int64 get_value();
Void set_value(System.Int64);
DateTime get_date();
String get_formattedValue();
String get_userID();
Int32 get_rank();
}
class Leaderboard : System.Object{
this ();
Void SetUserFilter(System.String[]);
String ToString();
Boolean get_loading();
Void SetLocalUserScore(UnityEngine.SocialPlatforms.IScore);
Void SetMaxRange(System.UInt32);
Void SetScores(UnityEngine.SocialPlatforms.IScore[]);
Void SetTitle(System.String);
String[] GetUserFilter();
String get_id();
Void set_id(System.String);
UserScope get_userScope();
Void set_userScope(UnityEngine.SocialPlatforms.UserScope);
Range get_range();
Void set_range(UnityEngine.SocialPlatforms.Range);
TimeScope get_timeScope();
Void set_timeScope(UnityEngine.SocialPlatforms.TimeScope);
IScore get_localUserScore();
UInt32 get_maxRange();
IScore[] get_scores();
String get_title();
}
}
