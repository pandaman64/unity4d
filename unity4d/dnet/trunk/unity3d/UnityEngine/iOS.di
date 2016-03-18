module UnityEngine.iOS;
import System;
import UnityEngine;
import System.Collections;
public:
pragma(assembly,"UnityEngine"){
class ADBannerView : System.__object{
static class Layout : System.Enum{
Int32 value__;
}
static class Type : System.Enum{
Int32 value__;
}
static class BannerWasClickedDelegate : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke();
System.IAsyncResult BeginInvoke(System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
static class BannerWasLoadedDelegate : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke();
System.IAsyncResult BeginInvoke(System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
this (UnityEngine.iOS.ADBannerView.Type,UnityEngine.iOS.ADBannerView.Layout);
static System.Void add_onBannerWasClicked(UnityEngine.iOS.ADBannerView.BannerWasClickedDelegate);
static System.Void remove_onBannerWasClicked(UnityEngine.iOS.ADBannerView.BannerWasClickedDelegate);
static System.Void add_onBannerWasLoaded(UnityEngine.iOS.ADBannerView.BannerWasLoadedDelegate);
static System.Void remove_onBannerWasLoaded(UnityEngine.iOS.ADBannerView.BannerWasLoadedDelegate);
static System.Boolean IsAvailable(UnityEngine.iOS.ADBannerView.Type);
System.Boolean get_loaded();
System.Boolean get_visible();
System.Void set_visible(System.Boolean);
UnityEngine.iOS.ADBannerView.Layout get_layout();
System.Void set_layout(UnityEngine.iOS.ADBannerView.Layout);
UnityEngine.Vector2 get_position();
System.Void set_position(UnityEngine.Vector2);
UnityEngine.Vector2 get_size();
}
class ADInterstitialAd : System.__object{
static class InterstitialWasLoadedDelegate : System.MulticastDelegate{
this (System.__object,System.IntPtr);
System.Void Invoke();
System.IAsyncResult BeginInvoke(System.AsyncCallback,System.__object);
System.Void EndInvoke(System.IAsyncResult);
}
this (System.Boolean);
this ();
static System.Void add_onInterstitialWasLoaded(UnityEngine.iOS.ADInterstitialAd.InterstitialWasLoadedDelegate);
static System.Void remove_onInterstitialWasLoaded(UnityEngine.iOS.ADInterstitialAd.InterstitialWasLoadedDelegate);
static System.Boolean get_isAvailable();
System.Void Show();
System.Void ReloadAd();
System.Boolean get_loaded();
}
class DeviceGeneration : System.Enum{
Int32 value__;
}
class Device : System.__object{
this ();
static UnityEngine.iOS.DeviceGeneration get_generation();
static System.String get_systemVersion();
static System.Void SetNoBackupFlag(System.String);
static System.Void ResetNoBackupFlag(System.String);
static System.String get_vendorIdentifier();
static System.String get_advertisingIdentifier();
static System.Boolean get_advertisingTrackingEnabled();
}
class ActivityIndicatorStyle : System.Enum{
Int32 value__;
}
class CalendarIdentifier : System.Enum{
Int32 value__;
}
class CalendarUnit : System.Enum{
Int32 value__;
}
class LocalNotification : System.__object{
this ();
System.DateTime get_fireDate();
System.Void set_fireDate(System.DateTime);
System.String get_timeZone();
System.Void set_timeZone(System.String);
UnityEngine.iOS.CalendarUnit get_repeatInterval();
System.Void set_repeatInterval(UnityEngine.iOS.CalendarUnit);
UnityEngine.iOS.CalendarIdentifier get_repeatCalendar();
System.Void set_repeatCalendar(UnityEngine.iOS.CalendarIdentifier);
System.String get_alertBody();
System.Void set_alertBody(System.String);
System.String get_alertAction();
System.Void set_alertAction(System.String);
System.Boolean get_hasAction();
System.Void set_hasAction(System.Boolean);
System.String get_alertLaunchImage();
System.Void set_alertLaunchImage(System.String);
System.Int32 get_applicationIconBadgeNumber();
System.Void set_applicationIconBadgeNumber(System.Int32);
System.String get_soundName();
System.Void set_soundName(System.String);
static System.String get_defaultSoundName();
System.Collections.IDictionary get_userInfo();
System.Void set_userInfo(System.Collections.IDictionary);
}
class RemoteNotification : System.__object{
System.String get_alertBody();
System.Boolean get_hasAction();
System.Int32 get_applicationIconBadgeNumber();
System.String get_soundName();
System.Collections.IDictionary get_userInfo();
}
class NotificationType : System.Enum{
Int32 value__;
}
class NotificationServices : System.__object{
this ();
static System.Int32 get_localNotificationCount();
static UnityEngine.iOS.LocalNotification GetLocalNotification(System.Int32);
static UnityEngine.iOS.LocalNotification[] get_localNotifications();
static System.Void ScheduleLocalNotification(UnityEngine.iOS.LocalNotification);
static System.Void PresentLocalNotificationNow(UnityEngine.iOS.LocalNotification);
static System.Void CancelLocalNotification(UnityEngine.iOS.LocalNotification);
static System.Void CancelAllLocalNotifications();
static UnityEngine.iOS.LocalNotification[] get_scheduledLocalNotifications();
static System.Int32 get_remoteNotificationCount();
static UnityEngine.iOS.RemoteNotification GetRemoteNotification(System.Int32);
static UnityEngine.iOS.RemoteNotification[] get_remoteNotifications();
static System.Void ClearLocalNotifications();
static System.Void ClearRemoteNotifications();
static System.Void RegisterForNotifications(UnityEngine.iOS.NotificationType);
static System.Void RegisterForNotifications(UnityEngine.iOS.NotificationType,System.Boolean);
static System.Void UnregisterForRemoteNotifications();
static UnityEngine.iOS.NotificationType get_enabledNotificationTypes();
static System.Byte[] get_deviceToken();
static System.String get_registrationError();
}
}
