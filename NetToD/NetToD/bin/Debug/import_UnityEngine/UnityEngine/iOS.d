module UnityEngine.iOS;
import System;
import UnityEngine;
import System.Collections;
public:
pragma(assembly,"UnityEngine"){
class ADBannerView : System.Object{
static class Layout : System.Enum{
}
static class Type : System.Enum{
}
static class BannerWasClickedDelegate : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke();
IAsyncResult BeginInvoke(System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
static class BannerWasLoadedDelegate : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke();
IAsyncResult BeginInvoke(System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
this (UnityEngine.iOS.ADBannerView.Type,UnityEngine.iOS.ADBannerView.Layout);
static Void add_onBannerWasClicked(UnityEngine.iOS.ADBannerView.BannerWasClickedDelegate);
static Void remove_onBannerWasClicked(UnityEngine.iOS.ADBannerView.BannerWasClickedDelegate);
static Void add_onBannerWasLoaded(UnityEngine.iOS.ADBannerView.BannerWasLoadedDelegate);
static Void remove_onBannerWasLoaded(UnityEngine.iOS.ADBannerView.BannerWasLoadedDelegate);
static Boolean IsAvailable(UnityEngine.iOS.ADBannerView.Type);
Boolean get_loaded();
Boolean get_visible();
Void set_visible(System.Boolean);
Layout get_layout();
Void set_layout(UnityEngine.iOS.ADBannerView.Layout);
Vector2 get_position();
Void set_position(UnityEngine.Vector2);
Vector2 get_size();
}
class ADInterstitialAd : System.Object{
static class InterstitialWasLoadedDelegate : System.MulticastDelegate{
this (System.Object,System.IntPtr);
Void Invoke();
IAsyncResult BeginInvoke(System.AsyncCallback,System.Object);
Void EndInvoke(System.IAsyncResult);
}
this (System.Boolean);
this ();
static Void add_onInterstitialWasLoaded(UnityEngine.iOS.ADInterstitialAd.InterstitialWasLoadedDelegate);
static Void remove_onInterstitialWasLoaded(UnityEngine.iOS.ADInterstitialAd.InterstitialWasLoadedDelegate);
static Boolean get_isAvailable();
Void Show();
Void ReloadAd();
Boolean get_loaded();
}
class DeviceGeneration : System.Enum{
}
class Device : System.Object{
this ();
static DeviceGeneration get_generation();
static String get_systemVersion();
static Void SetNoBackupFlag(System.String);
static Void ResetNoBackupFlag(System.String);
static String get_vendorIdentifier();
static String get_advertisingIdentifier();
static Boolean get_advertisingTrackingEnabled();
}
class ActivityIndicatorStyle : System.Enum{
}
class CalendarIdentifier : System.Enum{
}
class CalendarUnit : System.Enum{
}
class LocalNotification : System.Object{
this ();
DateTime get_fireDate();
Void set_fireDate(System.DateTime);
String get_timeZone();
Void set_timeZone(System.String);
CalendarUnit get_repeatInterval();
Void set_repeatInterval(UnityEngine.iOS.CalendarUnit);
CalendarIdentifier get_repeatCalendar();
Void set_repeatCalendar(UnityEngine.iOS.CalendarIdentifier);
String get_alertBody();
Void set_alertBody(System.String);
String get_alertAction();
Void set_alertAction(System.String);
Boolean get_hasAction();
Void set_hasAction(System.Boolean);
String get_alertLaunchImage();
Void set_alertLaunchImage(System.String);
Int32 get_applicationIconBadgeNumber();
Void set_applicationIconBadgeNumber(System.Int32);
String get_soundName();
Void set_soundName(System.String);
static String get_defaultSoundName();
IDictionary get_userInfo();
Void set_userInfo(System.Collections.IDictionary);
}
class RemoteNotification : System.Object{
String get_alertBody();
Boolean get_hasAction();
Int32 get_applicationIconBadgeNumber();
String get_soundName();
IDictionary get_userInfo();
}
class NotificationType : System.Enum{
}
class NotificationServices : System.Object{
this ();
static Int32 get_localNotificationCount();
static LocalNotification GetLocalNotification(System.Int32);
static LocalNotification[] get_localNotifications();
static Void ScheduleLocalNotification(UnityEngine.iOS.LocalNotification);
static Void PresentLocalNotificationNow(UnityEngine.iOS.LocalNotification);
static Void CancelLocalNotification(UnityEngine.iOS.LocalNotification);
static Void CancelAllLocalNotifications();
static LocalNotification[] get_scheduledLocalNotifications();
static Int32 get_remoteNotificationCount();
static RemoteNotification GetRemoteNotification(System.Int32);
static RemoteNotification[] get_remoteNotifications();
static Void ClearLocalNotifications();
static Void ClearRemoteNotifications();
static Void RegisterForNotifications(UnityEngine.iOS.NotificationType);
static Void RegisterForNotifications(UnityEngine.iOS.NotificationType,System.Boolean);
static Void UnregisterForRemoteNotifications();
static NotificationType get_enabledNotificationTypes();
static Byte[] get_deviceToken();
static String get_registrationError();
}
}
