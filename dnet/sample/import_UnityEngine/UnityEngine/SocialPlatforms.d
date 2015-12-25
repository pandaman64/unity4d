module UnityEngine.SocialPlatforms;
import System;
import UnityEngine;
public:
pragma(assembly,"UnityEngine"){
class Local : Object{
}
interface ISocialPlatform{
}
interface ILocalUser{
}
class UserState : Enum{
}
interface IUserProfile{
}
interface IAchievement{
}
interface IAchievementDescription{
}
interface IScore{
}
class UserScope : Enum{
}
class TimeScope : Enum{
}
class Range : ValueType{
}
interface ILeaderboard{
}
}
