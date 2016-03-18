module UnityEngine.SocialPlatforms.GameCenter;
import System;
import UnityEngine.SocialPlatforms;
public:
pragma(assembly,"UnityEngine"){
class GameCenterPlatform : UnityEngine.SocialPlatforms.Local{
this ();
static System.Void ShowDefaultAchievementCompletionBanner(System.Boolean);
static System.Void ShowLeaderboardUI(System.String,UnityEngine.SocialPlatforms.TimeScope);
}
}
