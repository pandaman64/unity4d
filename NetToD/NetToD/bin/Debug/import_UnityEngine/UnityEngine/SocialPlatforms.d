module UnityEngine.SocialPlatforms;
import System;
import UnityEngine;
public:
pragma(assembly,"UnityEngine"){
class Local : System.Object{
this ();
ILocalUser get_localUser();
Void ShowAchievementsUI();
Void ShowLeaderboardUI();
ILeaderboard CreateLeaderboard();
IAchievement CreateAchievement();
}
interface ISocialPlatform{
ILocalUser get_localUser();
IAchievement CreateAchievement();
ILeaderboard CreateLeaderboard();
Void ShowAchievementsUI();
Void ShowLeaderboardUI();
Boolean GetLoading(UnityEngine.SocialPlatforms.ILeaderboard);
}
interface ILocalUser{
IUserProfile[] get_friends();
Boolean get_authenticated();
Boolean get_underage();
}
class UserState : System.Enum{
}
interface IUserProfile{
String get_userName();
String get_id();
Boolean get_isFriend();
UserState get_state();
Texture2D get_image();
}
interface IAchievement{
String get_id();
Void set_id(System.String);
Double get_percentCompleted();
Void set_percentCompleted(System.Double);
Boolean get_completed();
Boolean get_hidden();
DateTime get_lastReportedDate();
}
interface IAchievementDescription{
String get_id();
Void set_id(System.String);
String get_title();
Texture2D get_image();
String get_achievedDescription();
String get_unachievedDescription();
Boolean get_hidden();
Int32 get_points();
}
interface IScore{
String get_leaderboardID();
Void set_leaderboardID(System.String);
Int64 get_value();
Void set_value(System.Int64);
DateTime get_date();
String get_formattedValue();
String get_userID();
Int32 get_rank();
}
class UserScope : System.Enum{
}
class TimeScope : System.Enum{
}
class Range : System.ValueType{
this (System.Int32,System.Int32);
}
interface ILeaderboard{
Void SetUserFilter(System.String[]);
Boolean get_loading();
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
