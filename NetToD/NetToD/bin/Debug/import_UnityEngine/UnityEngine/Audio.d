module UnityEngine.Audio;
import System;
import UnityEngine;
public:
pragma(assembly,"UnityEngine"){
class AudioMixer : UnityEngine.__UnityObject{
AudioMixerGroup get_outputAudioMixerGroup();
Void set_outputAudioMixerGroup(UnityEngine.Audio.AudioMixerGroup);
AudioMixerGroup[] FindMatchingGroups(System.String);
AudioMixerSnapshot FindSnapshot(System.String);
Void TransitionToSnapshots(UnityEngine.Audio.AudioMixerSnapshot[],System.Single[],System.Single);
Boolean SetFloat(System.String,System.Single);
Boolean ClearFloat(System.String);
}
class AudioMixerSnapshot : UnityEngine.__UnityObject{
AudioMixer get_audioMixer();
Void TransitionTo(System.Single);
}
class AudioMixerGroup : UnityEngine.__UnityObject{
AudioMixer get_audioMixer();
}
}
