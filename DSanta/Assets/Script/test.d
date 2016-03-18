import System;
import UnityEngine;

class Santa : MonoBehaviour{
  void Update(){
  }
}

class DKids : MonoBehaviour{
  void Start(){
  }

  void Update(){
    //intがうまく扱えないのじゃ・・・
    if(Input.GetMouseButtonUp(Int32.Parse("0".sys))){
      Debug.Log("click!".sys);
      AudioSource s = new AudioSource();
      (cast(AudioSource)GetComponent(s.GetType())).Play();
    }
  }
}
