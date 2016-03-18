module UnityEngine.SocialPlatforms.Impl;
import UnityEngine.SocialPlatforms;
import System;
import UnityEngine;
public:
pragma(assembly,"UnityEngine"){
class LocalUser : UnityEngine.SocialPlatforms.Impl.UserProfile{
this ();
System.Void SetFriends(UnityEngine.SocialPlatforms.IUserProfile[]);
System.Void SetAuthenticated(System.Boolean);
System.Void SetUnderage(System.Boolean);
UnityEngine.SocialPlatforms.IUserProfile[] get_friends();
System.Boolean get_authenticated();
System.Boolean get_underage();
}
class UserProfile : System.__object{
this ();
this (System.String,System.String,System.Boolean);
this (System.String,System.String,System.Boolean,UnityEngine.SocialPlatforms.UserState,UnityEngine.Texture2D);
System.String ToString();
System.Void SetUserName(System.String);
System.Void SetUserID(System.String);
System.Void SetImage(UnityEngine.Texture2D);
System.Void SetIsFriend(System.Boolean);
System.Void SetState(UnityEngine.SocialPlatforms.UserState);
System.String get_userName();
System.String get_id();
System.Boolean get_isFriend();
UnityEngine.SocialPlatforms.UserState get_state();
UnityEngine.Texture2D get_image();
}
class Achievement : System.__object{
this (System.String,System.Double,System.Boolean,System.Boolean,System.DateTime);
this (System.String,System.Double);
this ();
System.String ToString();
System.Void SetCompleted(System.Boolean);
System.Void SetHidden(System.Boolean);
System.Void SetLastReportedDate(System.DateTime);
System.String get_id();
System.Void set_id(System.String);
System.Double get_percentCompleted();
System.Void set_percentCompleted(System.Double);
System.Boolean get_completed();
System.Boolean get_hidden();
System.DateTime get_lastReportedDate();
}
class AchievementDescription : System.__object{
this (System.String,System.String,UnityEngine.Texture2D,System.String,System.String,System.Boolean,System.Int32);
System.String ToString();
System.Void SetImage(UnityEngine.Texture2D);
System.String get_id();
System.Void set_id(System.String);
System.String get_title();
UnityEngine.Texture2D get_image();
System.String get_achievedDescription();
System.String get_unachievedDescription();
System.Boolean get_hidden();
System.Int32 get_points();
}
class Score : System.__object{
this ();
this (System.String,System.Int64);
this (System.String,System.Int64,System.String,System.DateTime,System.String,System.Int32);
System.String ToString();
System.Void SetDate(System.DateTime);
System.Void SetFormattedValue(System.String);
System.Void SetUserID(System.String);
System.Void SetRank(System.Int32);
System.String get_leaderboardID();
System.Void set_leaderboardID(System.String);
System.Int64 get_value();
System.Void set_value(System.Int64);
System.DateTime get_date();
System.String get_formattedValue();
System.String get_userID();
System.Int32 get_rank();
}
class Leaderboard : System.__object{
this ();
System.Void SetUserFilter(System.String[]);
System.String ToString();
System.Boolean get_loading();
System.Void SetLocalUserScore(UnityEngine.SocialPlatforms.IScore);
System.Void SetMaxRange(System.UInt32);
System.Void SetScores(UnityEngine.SocialPlatforms.IScore[]);
System.Void SetTitle(System.String);
System.String[] GetUserFilter();
System.String get_id();
System.Void set_id(System.String);
UnityEngine.SocialPlatforms.UserScope get_userScope();
System.Void set_userScope(UnityEngine.SocialPlatforms.UserScope);
UnityEngine.SocialPlatforms.Range get_range();
System.Void set_range(UnityEngine.SocialPlatforms.Range);
UnityEngine.SocialPlatforms.TimeScope get_timeScope();
System.Void set_timeScope(UnityEngine.SocialPlatforms.TimeScope);
UnityEngine.SocialPlatforms.IScore get_localUserScore();
System.UInt32 get_maxRange();
UnityEngine.SocialPlatforms.IScore[] get_scores();
System.String get_title();
}
}
