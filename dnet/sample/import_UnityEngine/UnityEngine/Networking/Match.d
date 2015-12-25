module UnityEngine.Networking.Match;
import UnityEngine.Networking.Types;
import System;
import System.Collections;
import UnityEngine;
public:
pragma(assembly,"UnityEngine"){
class Request : Object{
}
class ResponseBase : Object{
}
interface IResponse{
}
class Response : ResponseBase{
}
class BasicResponse : Response{
}
class StopDedicatedMatchRequest : Request{
}
class StopDedicatedMatchResponse : BasicResponse{
}
class CreateMatchRequest : Request{
}
class CreateMatchResponse : BasicResponse{
}
class JoinMatchRequest : Request{
}
class JoinMatchResponse : BasicResponse{
}
class DestroyMatchRequest : Request{
}
class DropConnectionRequest : Request{
}
class ListMatchRequest : Request{
}
class MatchDirectConnectInfo : ResponseBase{
}
class MatchDesc : ResponseBase{
}
class ListMatchResponse : BasicResponse{
}
class CreateDedicatedMatchRequest : Request{
}
class CreateDedicatedMatchResponse : BasicResponse{
}
class CreateOrJoinMatchRequest : CreateMatchRequest{
}
class MatchInfo : Object{
}
class NetworkMatch : MonoBehaviour{
}
}
