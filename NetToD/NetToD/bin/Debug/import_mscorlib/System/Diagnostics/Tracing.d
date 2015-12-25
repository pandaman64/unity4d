module System.Diagnostics.Tracing;
import System;
import System.Runtime.Serialization;
import System.Collections;
import System.Reflection;
public:
pragma(assembly,"mscorlib"){
class EventActivityOptions : System.Enum{
}
class EventSource : System.Object{
this (System.String);
this (System.String,System.Diagnostics.Tracing.EventSourceSettings);
this (System.String,System.Diagnostics.Tracing.EventSourceSettings,System.String[]);
String get_Name();
Guid get_Guid();
Boolean IsEnabled();
Boolean IsEnabled(System.Diagnostics.Tracing.EventLevel,System.Diagnostics.Tracing.EventKeywords);
Boolean IsEnabled(System.Diagnostics.Tracing.EventLevel,System.Diagnostics.Tracing.EventKeywords,System.Diagnostics.Tracing.EventChannel);
EventSourceSettings get_Settings();
static Guid GetGuid(System.Type);
static String GetName(System.Type);
static String GenerateManifest(System.Type,System.String);
static String GenerateManifest(System.Type,System.String,System.Diagnostics.Tracing.EventManifestOptions);
static Void SetCurrentThreadActivityId(System.Guid);
static Guid get_CurrentThreadActivityId();
Exception get_ConstructionException();
String GetTrait(System.String);
String ToString();
Void Dispose();
Void Write(System.String);
Void Write(System.String,System.Diagnostics.Tracing.EventSourceOptions);
}
class EventSourceSettings : System.Enum{
}
class EventListener : System.Object{
Void Dispose();
Void EnableEvents(System.Diagnostics.Tracing.EventSource,System.Diagnostics.Tracing.EventLevel);
Void EnableEvents(System.Diagnostics.Tracing.EventSource,System.Diagnostics.Tracing.EventLevel,System.Diagnostics.Tracing.EventKeywords);
Void DisableEvents(System.Diagnostics.Tracing.EventSource);
}
class EventCommandEventArgs : System.EventArgs{
EventCommand get_Command();
Boolean EnableEvent(System.Int32);
Boolean DisableEvent(System.Int32);
}
class EventWrittenEventArgs : System.EventArgs{
String get_EventName();
Int32 get_EventId();
Guid get_ActivityId();
Guid get_RelatedActivityId();
EventSource get_EventSource();
EventKeywords get_Keywords();
EventOpcode get_Opcode();
EventTask get_Task();
EventTags get_Tags();
String get_Message();
EventChannel get_Channel();
Byte get_Version();
EventLevel get_Level();
}
class EventSourceAttribute : System.Attribute{
this ();
String get_Name();
Void set_Name(System.String);
String get_Guid();
Void set_Guid(System.String);
String get_LocalizationResources();
Void set_LocalizationResources(System.String);
}
class EventAttribute : System.Attribute{
this (System.Int32);
Int32 get_EventId();
EventLevel get_Level();
Void set_Level(System.Diagnostics.Tracing.EventLevel);
EventKeywords get_Keywords();
Void set_Keywords(System.Diagnostics.Tracing.EventKeywords);
EventOpcode get_Opcode();
Void set_Opcode(System.Diagnostics.Tracing.EventOpcode);
EventTask get_Task();
Void set_Task(System.Diagnostics.Tracing.EventTask);
EventChannel get_Channel();
Void set_Channel(System.Diagnostics.Tracing.EventChannel);
Byte get_Version();
Void set_Version(System.Byte);
String get_Message();
Void set_Message(System.String);
EventTags get_Tags();
Void set_Tags(System.Diagnostics.Tracing.EventTags);
EventActivityOptions get_ActivityOptions();
Void set_ActivityOptions(System.Diagnostics.Tracing.EventActivityOptions);
}
class NonEventAttribute : System.Attribute{
this ();
}
class EventCommand : System.Enum{
}
class EventManifestOptions : System.Enum{
}
class EventSourceException : System.Exception{
this ();
this (System.String);
this (System.String,System.Exception);
}
class EventLevel : System.Enum{
}
class EventTask : System.Enum{
}
class EventOpcode : System.Enum{
}
class EventChannel : System.Enum{
}
class EventKeywords : System.Enum{
}
class EventDataAttribute : System.Attribute{
this ();
String get_Name();
Void set_Name(System.String);
}
class EventFieldTags : System.Enum{
}
class EventFieldAttribute : System.Attribute{
this ();
EventFieldTags get_Tags();
Void set_Tags(System.Diagnostics.Tracing.EventFieldTags);
EventFieldFormat get_Format();
Void set_Format(System.Diagnostics.Tracing.EventFieldFormat);
}
class EventFieldFormat : System.Enum{
}
class EventIgnoreAttribute : System.Attribute{
this ();
}
class EventSourceOptions : System.ValueType{
EventLevel get_Level();
Void set_Level(System.Diagnostics.Tracing.EventLevel);
EventOpcode get_Opcode();
Void set_Opcode(System.Diagnostics.Tracing.EventOpcode);
EventKeywords get_Keywords();
Void set_Keywords(System.Diagnostics.Tracing.EventKeywords);
EventTags get_Tags();
Void set_Tags(System.Diagnostics.Tracing.EventTags);
EventActivityOptions get_ActivityOptions();
Void set_ActivityOptions(System.Diagnostics.Tracing.EventActivityOptions);
}
class EventTags : System.Enum{
}
}
