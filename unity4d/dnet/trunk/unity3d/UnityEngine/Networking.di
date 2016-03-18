module UnityEngine.Networking;
import System;
import UnityEngine.Networking.Types;
import System.Net;
import UnityEngine;
public:
pragma(assembly,"UnityEngine"){
class Utility : System.__object{
static System.Boolean get_useRandomSourceID();
static System.Void set_useRandomSourceID(System.Boolean);
static UnityEngine.Networking.Types.SourceID GetSourceID();
static System.Void SetAppID(UnityEngine.Networking.Types.AppID);
static UnityEngine.Networking.Types.AppID GetAppID();
static System.Void SetAccessTokenForNetwork(UnityEngine.Networking.Types.NetworkID,UnityEngine.Networking.Types.NetworkAccessToken);
static UnityEngine.Networking.Types.NetworkAccessToken GetAccessTokenForNetwork(UnityEngine.Networking.Types.NetworkID);
}
class NetworkTransport : System.__object{
static System.Void Init();
static System.Void Init(UnityEngine.Networking.GlobalConfig);
static System.Void Shutdown();
static System.String GetAssetId(UnityEngine.GameObject);
static System.Void AddSceneId(System.Int32);
static System.Int32 GetNextSceneId();
static System.Int32 GetCurrentIncomingMessageAmount();
static System.Int32 GetCurrentOutgoingMessageAmount();
static System.Int32 GetNetIOTimeuS();
static System.Int32 GetNetworkTimestamp();
static System.Int32 AddWebsocketHost(UnityEngine.Networking.HostTopology,System.Int32);
static System.Int32 AddWebsocketHost(UnityEngine.Networking.HostTopology,System.Int32,System.String);
static System.Int32 AddHost(UnityEngine.Networking.HostTopology,System.Int32);
static System.Int32 AddHost(UnityEngine.Networking.HostTopology);
static System.Int32 AddHost(UnityEngine.Networking.HostTopology,System.Int32,System.String);
static System.Int32 AddHostWithSimulator(UnityEngine.Networking.HostTopology,System.Int32,System.Int32,System.Int32);
static System.Int32 AddHostWithSimulator(UnityEngine.Networking.HostTopology,System.Int32,System.Int32);
static System.Int32 AddHostWithSimulator(UnityEngine.Networking.HostTopology,System.Int32,System.Int32,System.Int32,System.String);
static System.Boolean RemoveHost(System.Int32);
static System.Boolean get_IsStarted();
static System.Void SetPacketStat(System.Int32,System.Int32,System.Int32,System.Int32);
static System.Void StopBroadcastDiscovery();
static System.Boolean IsBroadcastDiscoveryRunning();
}
class NetworkEventType : System.Enum{
Int32 value__;
}
class QosType : System.Enum{
Int32 value__;
}
class NetworkError : System.Enum{
Int32 value__;
}
class ReactorModel : System.Enum{
Int32 value__;
}
class ChannelQOS : System.__object{
this (UnityEngine.Networking.QosType);
this ();
this (UnityEngine.Networking.ChannelQOS);
UnityEngine.Networking.QosType get_QOS();
}
class ConnectionConfig : System.__object{
this ();
this (UnityEngine.Networking.ConnectionConfig);
static System.Void Validate(UnityEngine.Networking.ConnectionConfig);
System.UInt16 get_PacketSize();
System.Void set_PacketSize(System.UInt16);
System.UInt16 get_FragmentSize();
System.Void set_FragmentSize(System.UInt16);
System.UInt32 get_ResendTimeout();
System.Void set_ResendTimeout(System.UInt32);
System.UInt32 get_DisconnectTimeout();
System.Void set_DisconnectTimeout(System.UInt32);
System.UInt32 get_ConnectTimeout();
System.Void set_ConnectTimeout(System.UInt32);
System.UInt32 get_MinUpdateTimeout();
System.Void set_MinUpdateTimeout(System.UInt32);
System.UInt32 get_PingTimeout();
System.Void set_PingTimeout(System.UInt32);
System.UInt32 get_ReducedPingTimeout();
System.Void set_ReducedPingTimeout(System.UInt32);
System.UInt32 get_AllCostTimeout();
System.Void set_AllCostTimeout(System.UInt32);
System.Byte get_NetworkDropThreshold();
System.Void set_NetworkDropThreshold(System.Byte);
System.Byte get_OverflowDropThreshold();
System.Void set_OverflowDropThreshold(System.Byte);
System.Byte get_MaxConnectionAttempt();
System.Void set_MaxConnectionAttempt(System.Byte);
System.UInt32 get_AckDelay();
System.Void set_AckDelay(System.UInt32);
System.UInt16 get_MaxCombinedReliableMessageSize();
System.Void set_MaxCombinedReliableMessageSize(System.UInt16);
System.UInt16 get_MaxCombinedReliableMessageCount();
System.Void set_MaxCombinedReliableMessageCount(System.UInt16);
System.UInt16 get_MaxSentMessageQueueSize();
System.Void set_MaxSentMessageQueueSize(System.UInt16);
System.Boolean get_IsAcksLong();
System.Void set_IsAcksLong(System.Boolean);
System.Int32 get_ChannelCount();
System.Byte AddChannel(UnityEngine.Networking.QosType);
UnityEngine.Networking.QosType GetChannel(System.Byte);
}
class HostTopology : System.__object{
this (UnityEngine.Networking.ConnectionConfig,System.Int32);
UnityEngine.Networking.ConnectionConfig get_DefaultConfig();
System.Int32 get_MaxDefaultConnections();
System.Int32 get_SpecialConnectionConfigsCount();
UnityEngine.Networking.ConnectionConfig GetSpecialConnectionConfig(System.Int32);
System.UInt16 get_ReceivedMessagePoolSize();
System.Void set_ReceivedMessagePoolSize(System.UInt16);
System.UInt16 get_SentMessagePoolSize();
System.Void set_SentMessagePoolSize(System.UInt16);
System.Single get_MessagePoolSizeGrowthFactor();
System.Void set_MessagePoolSizeGrowthFactor(System.Single);
System.Int32 AddSpecialConnectionConfig(UnityEngine.Networking.ConnectionConfig);
}
class GlobalConfig : System.__object{
this ();
System.UInt32 get_ThreadAwakeTimeout();
System.Void set_ThreadAwakeTimeout(System.UInt32);
UnityEngine.Networking.ReactorModel get_ReactorModel();
System.Void set_ReactorModel(UnityEngine.Networking.ReactorModel);
System.UInt16 get_ReactorMaximumReceivedMessages();
System.Void set_ReactorMaximumReceivedMessages(System.UInt16);
System.UInt16 get_ReactorMaximumSentMessages();
System.Void set_ReactorMaximumSentMessages(System.UInt16);
System.UInt16 get_MaxPacketSize();
System.Void set_MaxPacketSize(System.UInt16);
}
class ConnectionSimulatorConfig : System.__object{
this (System.Int32,System.Int32,System.Int32,System.Int32,System.Single);
System.Void Dispose();
}
}
