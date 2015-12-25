module UnityEngine.Networking;
import System;
import UnityEngine.Networking.Types;
import System.Net;
import UnityEngine;
public:
pragma(assembly,"UnityEngine"){
class Utility : System.Object{
static Boolean get_useRandomSourceID();
static Void set_useRandomSourceID(System.Boolean);
static SourceID GetSourceID();
static Void SetAppID(UnityEngine.Networking.Types.AppID);
static AppID GetAppID();
static Void SetAccessTokenForNetwork(UnityEngine.Networking.Types.NetworkID,UnityEngine.Networking.Types.NetworkAccessToken);
static NetworkAccessToken GetAccessTokenForNetwork(UnityEngine.Networking.Types.NetworkID);
}
class NetworkTransport : System.Object{
static Void Init();
static Void Init(UnityEngine.Networking.GlobalConfig);
static Void Shutdown();
static String GetAssetId(UnityEngine.GameObject);
static Void AddSceneId(System.Int32);
static Int32 GetNextSceneId();
static Int32 GetCurrentIncomingMessageAmount();
static Int32 GetCurrentOutgoingMessageAmount();
static Int32 GetNetIOTimeuS();
static Int32 GetNetworkTimestamp();
static Int32 AddWebsocketHost(UnityEngine.Networking.HostTopology,System.Int32);
static Int32 AddWebsocketHost(UnityEngine.Networking.HostTopology,System.Int32,System.String);
static Int32 AddHost(UnityEngine.Networking.HostTopology,System.Int32);
static Int32 AddHost(UnityEngine.Networking.HostTopology);
static Int32 AddHost(UnityEngine.Networking.HostTopology,System.Int32,System.String);
static Int32 AddHostWithSimulator(UnityEngine.Networking.HostTopology,System.Int32,System.Int32,System.Int32);
static Int32 AddHostWithSimulator(UnityEngine.Networking.HostTopology,System.Int32,System.Int32);
static Int32 AddHostWithSimulator(UnityEngine.Networking.HostTopology,System.Int32,System.Int32,System.Int32,System.String);
static Boolean RemoveHost(System.Int32);
static Boolean get_IsStarted();
static Void SetPacketStat(System.Int32,System.Int32,System.Int32,System.Int32);
static Void StopBroadcastDiscovery();
static Boolean IsBroadcastDiscoveryRunning();
}
class NetworkEventType : System.Enum{
}
class QosType : System.Enum{
}
class NetworkError : System.Enum{
}
class ReactorModel : System.Enum{
}
class ChannelQOS : System.Object{
this (UnityEngine.Networking.QosType);
this ();
this (UnityEngine.Networking.ChannelQOS);
QosType get_QOS();
}
class ConnectionConfig : System.Object{
this ();
this (UnityEngine.Networking.ConnectionConfig);
static Void Validate(UnityEngine.Networking.ConnectionConfig);
UInt16 get_PacketSize();
Void set_PacketSize(System.UInt16);
UInt16 get_FragmentSize();
Void set_FragmentSize(System.UInt16);
UInt32 get_ResendTimeout();
Void set_ResendTimeout(System.UInt32);
UInt32 get_DisconnectTimeout();
Void set_DisconnectTimeout(System.UInt32);
UInt32 get_ConnectTimeout();
Void set_ConnectTimeout(System.UInt32);
UInt32 get_MinUpdateTimeout();
Void set_MinUpdateTimeout(System.UInt32);
UInt32 get_PingTimeout();
Void set_PingTimeout(System.UInt32);
UInt32 get_ReducedPingTimeout();
Void set_ReducedPingTimeout(System.UInt32);
UInt32 get_AllCostTimeout();
Void set_AllCostTimeout(System.UInt32);
Byte get_NetworkDropThreshold();
Void set_NetworkDropThreshold(System.Byte);
Byte get_OverflowDropThreshold();
Void set_OverflowDropThreshold(System.Byte);
Byte get_MaxConnectionAttempt();
Void set_MaxConnectionAttempt(System.Byte);
UInt32 get_AckDelay();
Void set_AckDelay(System.UInt32);
UInt16 get_MaxCombinedReliableMessageSize();
Void set_MaxCombinedReliableMessageSize(System.UInt16);
UInt16 get_MaxCombinedReliableMessageCount();
Void set_MaxCombinedReliableMessageCount(System.UInt16);
UInt16 get_MaxSentMessageQueueSize();
Void set_MaxSentMessageQueueSize(System.UInt16);
Boolean get_IsAcksLong();
Void set_IsAcksLong(System.Boolean);
Int32 get_ChannelCount();
Byte AddChannel(UnityEngine.Networking.QosType);
QosType GetChannel(System.Byte);
}
class HostTopology : System.Object{
this (UnityEngine.Networking.ConnectionConfig,System.Int32);
ConnectionConfig get_DefaultConfig();
Int32 get_MaxDefaultConnections();
Int32 get_SpecialConnectionConfigsCount();
ConnectionConfig GetSpecialConnectionConfig(System.Int32);
UInt16 get_ReceivedMessagePoolSize();
Void set_ReceivedMessagePoolSize(System.UInt16);
UInt16 get_SentMessagePoolSize();
Void set_SentMessagePoolSize(System.UInt16);
Single get_MessagePoolSizeGrowthFactor();
Void set_MessagePoolSizeGrowthFactor(System.Single);
Int32 AddSpecialConnectionConfig(UnityEngine.Networking.ConnectionConfig);
}
class GlobalConfig : System.Object{
this ();
UInt32 get_ThreadAwakeTimeout();
Void set_ThreadAwakeTimeout(System.UInt32);
ReactorModel get_ReactorModel();
Void set_ReactorModel(UnityEngine.Networking.ReactorModel);
UInt16 get_ReactorMaximumReceivedMessages();
Void set_ReactorMaximumReceivedMessages(System.UInt16);
UInt16 get_ReactorMaximumSentMessages();
Void set_ReactorMaximumSentMessages(System.UInt16);
UInt16 get_MaxPacketSize();
Void set_MaxPacketSize(System.UInt16);
}
class ConnectionSimulatorConfig : System.Object{
this (System.Int32,System.Int32,System.Int32,System.Int32,System.Single);
Void Dispose();
}
}
