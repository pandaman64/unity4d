module UnityEngine.Networking.Match;
import UnityEngine.Networking.Types;
import System;
import System.Collections;
import UnityEngine;
public:
pragma(assembly,"UnityEngine"){
class Request : System.Object{
SourceID get_sourceId();
Void set_sourceId(UnityEngine.Networking.Types.SourceID);
AppID get_appId();
Void set_appId(UnityEngine.Networking.Types.AppID);
String get_accessTokenString();
Void set_accessTokenString(System.String);
Int32 get_domain();
Void set_domain(System.Int32);
Boolean IsValid();
String ToString();
}
class ResponseBase : System.Object{
Void Parse(System.Object);
}
interface IResponse{
Void SetSuccess();
Void SetFailure(System.String);
}
class Response : UnityEngine.Networking.Match.ResponseBase{
Boolean get_success();
String get_extendedInfo();
Void SetSuccess();
Void SetFailure(System.String);
String ToString();
Void Parse(System.Object);
}
class BasicResponse : UnityEngine.Networking.Match.Response{
this ();
}
class StopDedicatedMatchRequest : UnityEngine.Networking.Match.Request{
this ();
NetworkID get_networkId();
Void set_networkId(UnityEngine.Networking.Types.NetworkID);
}
class StopDedicatedMatchResponse : UnityEngine.Networking.Match.BasicResponse{
this ();
}
class CreateMatchRequest : UnityEngine.Networking.Match.Request{
this ();
String get_name();
Void set_name(System.String);
UInt32 get_size();
Void set_size(System.UInt32);
String get_publicAddress();
Void set_publicAddress(System.String);
String get_privateAddress();
Void set_privateAddress(System.String);
Int32 get_eloScore();
Void set_eloScore(System.Int32);
Boolean get_advertise();
Void set_advertise(System.Boolean);
String get_password();
Void set_password(System.String);
String ToString();
Boolean IsValid();
}
class CreateMatchResponse : UnityEngine.Networking.Match.BasicResponse{
this ();
String get_address();
Void set_address(System.String);
Int32 get_port();
Void set_port(System.Int32);
NetworkID get_networkId();
Void set_networkId(UnityEngine.Networking.Types.NetworkID);
String get_accessTokenString();
Void set_accessTokenString(System.String);
NodeID get_nodeId();
Void set_nodeId(UnityEngine.Networking.Types.NodeID);
Boolean get_usingRelay();
Void set_usingRelay(System.Boolean);
String ToString();
Void Parse(System.Object);
}
class JoinMatchRequest : UnityEngine.Networking.Match.Request{
this ();
NetworkID get_networkId();
Void set_networkId(UnityEngine.Networking.Types.NetworkID);
String get_publicAddress();
Void set_publicAddress(System.String);
String get_privateAddress();
Void set_privateAddress(System.String);
Int32 get_eloScore();
Void set_eloScore(System.Int32);
String get_password();
Void set_password(System.String);
String ToString();
Boolean IsValid();
}
class JoinMatchResponse : UnityEngine.Networking.Match.BasicResponse{
this ();
String get_address();
Void set_address(System.String);
Int32 get_port();
Void set_port(System.Int32);
NetworkID get_networkId();
Void set_networkId(UnityEngine.Networking.Types.NetworkID);
String get_accessTokenString();
Void set_accessTokenString(System.String);
NodeID get_nodeId();
Void set_nodeId(UnityEngine.Networking.Types.NodeID);
Boolean get_usingRelay();
Void set_usingRelay(System.Boolean);
String ToString();
Void Parse(System.Object);
}
class DestroyMatchRequest : UnityEngine.Networking.Match.Request{
this ();
NetworkID get_networkId();
Void set_networkId(UnityEngine.Networking.Types.NetworkID);
String ToString();
Boolean IsValid();
}
class DropConnectionRequest : UnityEngine.Networking.Match.Request{
this ();
NetworkID get_networkId();
Void set_networkId(UnityEngine.Networking.Types.NetworkID);
NodeID get_nodeId();
Void set_nodeId(UnityEngine.Networking.Types.NodeID);
String ToString();
Boolean IsValid();
}
class ListMatchRequest : UnityEngine.Networking.Match.Request{
this ();
Int32 get_pageSize();
Void set_pageSize(System.Int32);
Int32 get_pageNum();
Void set_pageNum(System.Int32);
String get_nameFilter();
Void set_nameFilter(System.String);
Int32 get_eloScore();
Void set_eloScore(System.Int32);
String ToString();
Boolean IsValid();
}
class MatchDirectConnectInfo : UnityEngine.Networking.Match.ResponseBase{
this ();
NodeID get_nodeId();
Void set_nodeId(UnityEngine.Networking.Types.NodeID);
String get_publicAddress();
Void set_publicAddress(System.String);
String get_privateAddress();
Void set_privateAddress(System.String);
String ToString();
Void Parse(System.Object);
}
class MatchDesc : UnityEngine.Networking.Match.ResponseBase{
this ();
NetworkID get_networkId();
Void set_networkId(UnityEngine.Networking.Types.NetworkID);
String get_name();
Void set_name(System.String);
Int32 get_averageEloScore();
Void set_averageEloScore(System.Int32);
Int32 get_maxSize();
Void set_maxSize(System.Int32);
Int32 get_currentSize();
Void set_currentSize(System.Int32);
Boolean get_isPrivate();
Void set_isPrivate(System.Boolean);
NodeID get_hostNodeId();
Void set_hostNodeId(UnityEngine.Networking.Types.NodeID);
String ToString();
Void Parse(System.Object);
}
class ListMatchResponse : UnityEngine.Networking.Match.BasicResponse{
this ();
String ToString();
Void Parse(System.Object);
}
class CreateDedicatedMatchRequest : UnityEngine.Networking.Match.Request{
this ();
String get_name();
Void set_name(System.String);
UInt32 get_size();
Void set_size(System.UInt32);
Boolean get_advertise();
Void set_advertise(System.Boolean);
String get_password();
Void set_password(System.String);
String get_publicAddress();
Void set_publicAddress(System.String);
String get_privateAddress();
Void set_privateAddress(System.String);
Int32 get_eloScore();
Void set_eloScore(System.Int32);
Boolean IsValid();
}
class CreateDedicatedMatchResponse : UnityEngine.Networking.Match.BasicResponse{
this ();
NetworkID get_networkId();
Void set_networkId(UnityEngine.Networking.Types.NetworkID);
NodeID get_nodeId();
Void set_nodeId(UnityEngine.Networking.Types.NodeID);
String get_address();
Void set_address(System.String);
Int32 get_port();
Void set_port(System.Int32);
String get_accessTokenString();
Void set_accessTokenString(System.String);
Void Parse(System.Object);
}
class CreateOrJoinMatchRequest : UnityEngine.Networking.Match.CreateMatchRequest{
this ();
}
class MatchInfo : System.Object{
this (UnityEngine.Networking.Match.CreateMatchResponse);
this (UnityEngine.Networking.Match.JoinMatchResponse);
String get_address();
Int32 get_port();
NetworkID get_networkId();
NetworkAccessToken get_accessToken();
NodeID get_nodeId();
Boolean get_usingRelay();
String ToString();
}
class NetworkMatch : UnityEngine.MonoBehaviour{
this ();
Uri get_baseUri();
Void set_baseUri(System.Uri);
Void SetProgramAppID(UnityEngine.Networking.Types.AppID);
}
}
