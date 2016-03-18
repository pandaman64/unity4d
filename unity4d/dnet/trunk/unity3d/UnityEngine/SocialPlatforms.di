module UnityEngine.SocialPlatforms;
import System;
import UnityEngine;
public:
pragma(assembly,"UnityEngine"){
class Local : System.__object{
this ();
UnityEngine.SocialPlatforms.ILocalUser get_localUser();
System.Void ShowAchievementsUI();
System.Void ShowLeaderboardUI();
UnityEngine.SocialPlatforms.ILeaderboard CreateLeaderboard();
UnityEngine.SocialPlatforms.IAchievement CreateAchievement();
}
interface ISocialPlatform{
UnityEngine.SocialPlatforms.ILocalUser get_localUser();
UnityEngine.SocialPlatforms.IAchievement CreateAchievement();
UnityEngine.SocialPlatforms.ILeaderboard CreateLeaderboard();
System.Void ShowAchievementsUI();
System.Void ShowLeaderboardUI();
System.Boolean GetLoading(UnityEngine.SocialPlatforms.ILeaderboard);
}
interface ILocalUser{
UnityEngine.SocialPlatforms.IUserProfile[] get_friends();
System.Boolean get_authenticated();
System.Boolean get_underage();
}
class UserState : System.Enum{
Int32 value__;
}
interface IUserProfile{
System.String get_userName();
System.String get_id();
System.Boolean get_isFriend();
UnityEngine.SocialPlatforms.UserState get_state();
UnityEngine.Texture2D get_image();
}
interface IAchievement{
System.String get_id();
System.Void set_id(System.String);
System.Double get_percentCompleted();
System.Void set_percentCompleted(System.Double);
System.Boolean get_completed();
System.Boolean get_hidden();
System.DateTime get_lastReportedDate();
}
interface IAchievementDescription{
System.String get_id();
System.Void set_id(System.String);
System.String get_title();
UnityEngine.Texture2D get_image();
System.String get_achievedDescription();
System.String get_unachievedDescription();
System.Boolean get_hidden();
System.Int32 get_points();
}
interface IScore{
System.String get_leaderboardID();
System.Void set_leaderboardID(System.String);
System.Int64 get_value();
System.Void set_value(System.Int64);
System.DateTime get_date();
System.String get_formattedValue();
System.String get_userID();
System.Int32 get_rank();
}
class UserScope : System.Enum{
Int32 value__;
}
class TimeScope : System.Enum{
Int32 value__;
}
class Range : System.ValueType{
Int32 from;
Int32 count;
this (System.Int32,System.Int32);
}
interface ILeaderboard{
System.Void SetUserFilter(System.String[]);
System.Boolean get_loading();
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
