module System.Diagnostics.Tracing;
import System;
import System.Runtime.Serialization;
import System.Collections;
import System.Reflection;
public:
pragma(assembly,"mscorlib"){
class EventActivityOptions : Enum{
}
class EventSource : Object{
}
class EventSourceSettings : Enum{
}
class EventListener : Object{
}
class EventCommandEventArgs : EventArgs{
}
class EventWrittenEventArgs : EventArgs{
}
class EventSourceAttribute : Attribute{
}
class EventAttribute : Attribute{
}
class NonEventAttribute : Attribute{
}
class EventCommand : Enum{
}
class EventManifestOptions : Enum{
}
class EventSourceException : Exception{
}
class EventLevel : Enum{
}
class EventTask : Enum{
}
class EventOpcode : Enum{
}
class EventChannel : Enum{
}
class EventKeywords : Enum{
}
class EventDataAttribute : Attribute{
}
class EventFieldTags : Enum{
}
class EventFieldAttribute : Attribute{
}
class EventFieldFormat : Enum{
}
class EventIgnoreAttribute : Attribute{
}
class EventSourceOptions : ValueType{
}
class EventTags : Enum{
}
}
