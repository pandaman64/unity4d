module UnityEngine.Audio;
import System;
import UnityEngine;
public:
pragma(assembly,"UnityEngine"){
class AudioMixer : UnityEngine.__UnityObject{
UnityEngine.Audio.AudioMixerGroup get_outputAudioMixerGroup();
System.Void set_outputAudioMixerGroup(UnityEngine.Audio.AudioMixerGroup);
UnityEngine.Audio.AudioMixerGroup[] FindMatchingGroups(System.String);
UnityEngine.Audio.AudioMixerSnapshot FindSnapshot(System.String);
System.Void TransitionToSnapshots(UnityEngine.Audio.AudioMixerSnapshot[],System.Single[],System.Single);
System.Boolean SetFloat(System.String,System.Single);
System.Boolean ClearFloat(System.String);
}
class AudioMixerSnapshot : UnityEngine.__UnityObject{
UnityEngine.Audio.AudioMixer get_audioMixer();
System.Void TransitionTo(System.Single);
}
class AudioMixerGroup : UnityEngine.__UnityObject{
UnityEngine.Audio.AudioMixer get_audioMixer();
}
}
