module System.Diagnostics.Tracing;
import System;
import System.Runtime.Serialization;
import System.Collections;
import System.Reflection;
public:
pragma(assembly,"mscorlib"){
class EventActivityOptions : System.Enum{
}
class EventSource : System.__object{
this (System.String);
this (System.String,System.Diagnostics.Tracing.EventSourceSettings);
this (System.String,System.Diagnostics.Tracing.EventSourceSettings,System.String[]);
System.String get_Name();
System.Guid get_Guid();
System.Boolean IsEnabled();
System.Boolean IsEnabled(System.Diagnostics.Tracing.EventLevel,System.Diagnostics.Tracing.EventKeywords);
System.Boolean IsEnabled(System.Diagnostics.Tracing.EventLevel,System.Diagnostics.Tracing.EventKeywords,System.Diagnostics.Tracing.EventChannel);
System.Diagnostics.Tracing.EventSourceSettings get_Settings();
static System.Guid GetGuid(System.Type);
static System.String GetName(System.Type);
static System.String GenerateManifest(System.Type,System.String);
static System.String GenerateManifest(System.Type,System.String,System.Diagnostics.Tracing.EventManifestOptions);
static System.Void SetCurrentThreadActivityId(System.Guid);
static System.Guid get_CurrentThreadActivityId();
System.String GetTrait(System.String);
System.String ToString();
System.Void Dispose();
System.Void Write(System.String);
System.Void Write(System.String,System.Diagnostics.Tracing.EventSourceOptions);
}
class EventSourceSettings : System.Enum{
}
class EventListener : System.__object{
System.Void Dispose();
System.Void EnableEvents(System.Diagnostics.Tracing.EventSource,System.Diagnostics.Tracing.EventLevel);
System.Void EnableEvents(System.Diagnostics.Tracing.EventSource,System.Diagnostics.Tracing.EventLevel,System.Diagnostics.Tracing.EventKeywords);
System.Void DisableEvents(System.Diagnostics.Tracing.EventSource);
}
class EventCommandEventArgs : System.EventArgs{
System.Diagnostics.Tracing.EventCommand get_Command();
System.Boolean EnableEvent(System.Int32);
System.Boolean DisableEvent(System.Int32);
}
class EventWrittenEventArgs : System.EventArgs{
System.String get_EventName();
System.Int32 get_EventId();
System.Guid get_ActivityId();
System.Guid get_RelatedActivityId();
System.Diagnostics.Tracing.EventSource get_EventSource();
System.Diagnostics.Tracing.EventKeywords get_Keywords();
System.Diagnostics.Tracing.EventOpcode get_Opcode();
System.Diagnostics.Tracing.EventTask get_Task();
System.Diagnostics.Tracing.EventTags get_Tags();
System.String get_Message();
System.Diagnostics.Tracing.EventChannel get_Channel();
System.Byte get_Version();
System.Diagnostics.Tracing.EventLevel get_Level();
}
class EventSourceAttribute : System.Attribute{
this ();
System.String get_Name();
System.Void set_Name(System.String);
System.String get_Guid();
System.Void set_Guid(System.String);
System.String get_LocalizationResources();
System.Void set_LocalizationResources(System.String);
}
class EventAttribute : System.Attribute{
this (System.Int32);
System.Int32 get_EventId();
System.Diagnostics.Tracing.EventLevel get_Level();
System.Void set_Level(System.Diagnostics.Tracing.EventLevel);
System.Diagnostics.Tracing.EventKeywords get_Keywords();
System.Void set_Keywords(System.Diagnostics.Tracing.EventKeywords);
System.Diagnostics.Tracing.EventOpcode get_Opcode();
System.Void set_Opcode(System.Diagnostics.Tracing.EventOpcode);
System.Diagnostics.Tracing.EventTask get_Task();
System.Void set_Task(System.Diagnostics.Tracing.EventTask);
System.Diagnostics.Tracing.EventChannel get_Channel();
System.Void set_Channel(System.Diagnostics.Tracing.EventChannel);
System.Byte get_Version();
System.Void set_Version(System.Byte);
System.String get_Message();
System.Void set_Message(System.String);
System.Diagnostics.Tracing.EventTags get_Tags();
System.Void set_Tags(System.Diagnostics.Tracing.EventTags);
System.Diagnostics.Tracing.EventActivityOptions get_ActivityOptions();
System.Void set_ActivityOptions(System.Diagnostics.Tracing.EventActivityOptions);
}
class NonEventAttribute : System.Attribute{
this ();
}
class EventCommand : System.Enum{
}
class EventManifestOptions : System.Enum{
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
System.String get_Name();
System.Void set_Name(System.String);
}
class EventFieldTags : System.Enum{
}
class EventFieldAttribute : System.Attribute{
this ();
System.Diagnostics.Tracing.EventFieldTags get_Tags();
System.Void set_Tags(System.Diagnostics.Tracing.EventFieldTags);
System.Diagnostics.Tracing.EventFieldFormat get_Format();
System.Void set_Format(System.Diagnostics.Tracing.EventFieldFormat);
}
class EventFieldFormat : System.Enum{
}
class EventIgnoreAttribute : System.Attribute{
this ();
}
class EventSourceOptions : System.ValueType{
System.Diagnostics.Tracing.EventLevel get_Level();
System.Void set_Level(System.Diagnostics.Tracing.EventLevel);
System.Diagnostics.Tracing.EventOpcode get_Opcode();
System.Void set_Opcode(System.Diagnostics.Tracing.EventOpcode);
System.Diagnostics.Tracing.EventKeywords get_Keywords();
System.Void set_Keywords(System.Diagnostics.Tracing.EventKeywords);
System.Diagnostics.Tracing.EventTags get_Tags();
System.Void set_Tags(System.Diagnostics.Tracing.EventTags);
System.Diagnostics.Tracing.EventActivityOptions get_ActivityOptions();
System.Void set_ActivityOptions(System.Diagnostics.Tracing.EventActivityOptions);
}
class EventTags : System.Enum{
}
}
