module UnityEngine.Networking.Match;
import UnityEngine.Networking.Types;
import System;
import System.Collections;
import UnityEngine;
public:
pragma(assembly,"UnityEngine"){
class Request : System.__object{
Int32 version;
UnityEngine.Networking.Types.SourceID get_sourceId();
System.Void set_sourceId(UnityEngine.Networking.Types.SourceID);
UnityEngine.Networking.Types.AppID get_appId();
System.Void set_appId(UnityEngine.Networking.Types.AppID);
System.String get_accessTokenString();
System.Void set_accessTokenString(System.String);
System.Int32 get_domain();
System.Void set_domain(System.Int32);
System.Boolean IsValid();
System.String ToString();
}
class ResponseBase : System.__object{
System.Void Parse(System.__object);
}
interface IResponse{
System.Void SetSuccess();
System.Void SetFailure(System.String);
}
class Response : UnityEngine.Networking.Match.ResponseBase{
System.Boolean get_success();
System.String get_extendedInfo();
System.Void SetSuccess();
System.Void SetFailure(System.String);
System.String ToString();
System.Void Parse(System.__object);
}
class BasicResponse : UnityEngine.Networking.Match.Response{
this ();
}
class StopDedicatedMatchRequest : UnityEngine.Networking.Match.Request{
this ();
UnityEngine.Networking.Types.NetworkID get_networkId();
System.Void set_networkId(UnityEngine.Networking.Types.NetworkID);
}
class StopDedicatedMatchResponse : UnityEngine.Networking.Match.BasicResponse{
this ();
}
class CreateMatchRequest : UnityEngine.Networking.Match.Request{
this ();
System.String get_name();
System.Void set_name(System.String);
System.UInt32 get_size();
System.Void set_size(System.UInt32);
System.String get_publicAddress();
System.Void set_publicAddress(System.String);
System.String get_privateAddress();
System.Void set_privateAddress(System.String);
System.Int32 get_eloScore();
System.Void set_eloScore(System.Int32);
System.Boolean get_advertise();
System.Void set_advertise(System.Boolean);
System.String get_password();
System.Void set_password(System.String);
System.String ToString();
System.Boolean IsValid();
}
class CreateMatchResponse : UnityEngine.Networking.Match.BasicResponse{
this ();
System.String get_address();
System.Void set_address(System.String);
System.Int32 get_port();
System.Void set_port(System.Int32);
UnityEngine.Networking.Types.NetworkID get_networkId();
System.Void set_networkId(UnityEngine.Networking.Types.NetworkID);
System.String get_accessTokenString();
System.Void set_accessTokenString(System.String);
UnityEngine.Networking.Types.NodeID get_nodeId();
System.Void set_nodeId(UnityEngine.Networking.Types.NodeID);
System.Boolean get_usingRelay();
System.Void set_usingRelay(System.Boolean);
System.String ToString();
System.Void Parse(System.__object);
}
class JoinMatchRequest : UnityEngine.Networking.Match.Request{
this ();
UnityEngine.Networking.Types.NetworkID get_networkId();
System.Void set_networkId(UnityEngine.Networking.Types.NetworkID);
System.String get_publicAddress();
System.Void set_publicAddress(System.String);
System.String get_privateAddress();
System.Void set_privateAddress(System.String);
System.Int32 get_eloScore();
System.Void set_eloScore(System.Int32);
System.String get_password();
System.Void set_password(System.String);
System.String ToString();
System.Boolean IsValid();
}
class JoinMatchResponse : UnityEngine.Networking.Match.BasicResponse{
this ();
System.String get_address();
System.Void set_address(System.String);
System.Int32 get_port();
System.Void set_port(System.Int32);
UnityEngine.Networking.Types.NetworkID get_networkId();
System.Void set_networkId(UnityEngine.Networking.Types.NetworkID);
System.String get_accessTokenString();
System.Void set_accessTokenString(System.String);
UnityEngine.Networking.Types.NodeID get_nodeId();
System.Void set_nodeId(UnityEngine.Networking.Types.NodeID);
System.Boolean get_usingRelay();
System.Void set_usingRelay(System.Boolean);
System.String ToString();
System.Void Parse(System.__object);
}
class DestroyMatchRequest : UnityEngine.Networking.Match.Request{
this ();
UnityEngine.Networking.Types.NetworkID get_networkId();
System.Void set_networkId(UnityEngine.Networking.Types.NetworkID);
System.String ToString();
System.Boolean IsValid();
}
class DropConnectionRequest : UnityEngine.Networking.Match.Request{
this ();
UnityEngine.Networking.Types.NetworkID get_networkId();
System.Void set_networkId(UnityEngine.Networking.Types.NetworkID);
UnityEngine.Networking.Types.NodeID get_nodeId();
System.Void set_nodeId(UnityEngine.Networking.Types.NodeID);
System.String ToString();
System.Boolean IsValid();
}
class ListMatchRequest : UnityEngine.Networking.Match.Request{
this ();
System.Int32 get_pageSize();
System.Void set_pageSize(System.Int32);
System.Int32 get_pageNum();
System.Void set_pageNum(System.Int32);
System.String get_nameFilter();
System.Void set_nameFilter(System.String);
System.Int32 get_eloScore();
System.Void set_eloScore(System.Int32);
System.String ToString();
System.Boolean IsValid();
}
class MatchDirectConnectInfo : UnityEngine.Networking.Match.ResponseBase{
this ();
UnityEngine.Networking.Types.NodeID get_nodeId();
System.Void set_nodeId(UnityEngine.Networking.Types.NodeID);
System.String get_publicAddress();
System.Void set_publicAddress(System.String);
System.String get_privateAddress();
System.Void set_privateAddress(System.String);
System.String ToString();
System.Void Parse(System.__object);
}
class MatchDesc : UnityEngine.Networking.Match.ResponseBase{
this ();
UnityEngine.Networking.Types.NetworkID get_networkId();
System.Void set_networkId(UnityEngine.Networking.Types.NetworkID);
System.String get_name();
System.Void set_name(System.String);
System.Int32 get_averageEloScore();
System.Void set_averageEloScore(System.Int32);
System.Int32 get_maxSize();
System.Void set_maxSize(System.Int32);
System.Int32 get_currentSize();
System.Void set_currentSize(System.Int32);
System.Boolean get_isPrivate();
System.Void set_isPrivate(System.Boolean);
UnityEngine.Networking.Types.NodeID get_hostNodeId();
System.Void set_hostNodeId(UnityEngine.Networking.Types.NodeID);
System.String ToString();
System.Void Parse(System.__object);
}
class ListMatchResponse : UnityEngine.Networking.Match.BasicResponse{
this ();
System.String ToString();
System.Void Parse(System.__object);
}
class CreateDedicatedMatchRequest : UnityEngine.Networking.Match.Request{
this ();
System.String get_name();
System.Void set_name(System.String);
System.UInt32 get_size();
System.Void set_size(System.UInt32);
System.Boolean get_advertise();
System.Void set_advertise(System.Boolean);
System.String get_password();
System.Void set_password(System.String);
System.String get_publicAddress();
System.Void set_publicAddress(System.String);
System.String get_privateAddress();
System.Void set_privateAddress(System.String);
System.Int32 get_eloScore();
System.Void set_eloScore(System.Int32);
System.Boolean IsValid();
}
class CreateDedicatedMatchResponse : UnityEngine.Networking.Match.BasicResponse{
this ();
UnityEngine.Networking.Types.NetworkID get_networkId();
System.Void set_networkId(UnityEngine.Networking.Types.NetworkID);
UnityEngine.Networking.Types.NodeID get_nodeId();
System.Void set_nodeId(UnityEngine.Networking.Types.NodeID);
System.String get_address();
System.Void set_address(System.String);
System.Int32 get_port();
System.Void set_port(System.Int32);
System.String get_accessTokenString();
System.Void set_accessTokenString(System.String);
System.Void Parse(System.__object);
}
class CreateOrJoinMatchRequest : UnityEngine.Networking.Match.CreateMatchRequest{
this ();
}
class MatchInfo : System.__object{
this (UnityEngine.Networking.Match.CreateMatchResponse);
this (UnityEngine.Networking.Match.JoinMatchResponse);
System.String get_address();
System.Int32 get_port();
UnityEngine.Networking.Types.NetworkID get_networkId();
UnityEngine.Networking.Types.NetworkAccessToken get_accessToken();
UnityEngine.Networking.Types.NodeID get_nodeId();
System.Boolean get_usingRelay();
System.String ToString();
}
class NetworkMatch : UnityEngine.MonoBehaviour{
this ();
System.Uri get_baseUri();
System.Void set_baseUri(System.Uri);
System.Void SetProgramAppID(UnityEngine.Networking.Types.AppID);
}
}
