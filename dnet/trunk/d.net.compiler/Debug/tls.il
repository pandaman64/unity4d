//--------------------------------------------------------------
// tls.d compiled: Sat Nov 14 05:36:58 2015
//--------------------------------------------------------------
.assembly extern 'mscorlib' {}
.assembly extern dnetlib {}
.assembly 'tls' {}
.module 'tls'

//--------------------------------------------------------------
// D module data
//--------------------------------------------------------------
.class public beforefieldinit tls.$data
{
  .field static public int32 'i0'
  .custom instance void [mscorlib]System.ThreadStaticAttribute::.ctor() = ( 01 00 00 00 )
  .field static public class 'tls.Semaphore' 'sem1'

  .method static private void .cctor()
  {
    ldc.i4 42
    .line 4 'tls.d'
    stsfld int32 tls.$data::'i0'
    newobj instance void 'tls.Semaphore'::.ctor()
    .line 5
    stsfld class 'tls.Semaphore' tls.$data::'sem1'
    ret
  }
} // end of $data
#define ThreadStart "class [mscorlib]System.Threading.ThreadStart"

.class public auto 'tls.Semaphore' extends [dnetlib]core.Object
{
  .field public bool 'go'
  // default ctor, compiler-generated
  .method public hidebysig instance void .ctor()
  {
    ldarg.0
    call instance void [dnetlib]core.Object::.ctor()
    ret
  }
} // end of 'tls.Semaphore'

//--------------------------------------------------------------
// main program
//--------------------------------------------------------------
.method public hidebysig static void '_Dmain' ()
{
  .line 6
  .entrypoint
  .maxstack 3
  .locals init (
,
    [0] class [mscorlib]System.Threading.Thread 't' /* refcount=3 */ ,
    [1] class 'tls.main.Closure1' '$closure2' /* refcount=2 */ 
  )
  newobj instance void 'tls.main.Closure1'::.ctor()
  stloc.s 1	// '$closure2' (class 'tls.main.Closure1')
  ldloc.1	// '$closure2' (class 'tls.main.Closure1')
  dup
  ldvirtftn instance void 'tls.main.Closure1'::'asyncWork' ()
  newobj instance void class [mscorlib]System.Threading.ThreadStart::.ctor(object, native int)
  .line 15
  newobj instance void [mscorlib]System.Threading.Thread::.ctor (ThreadStart)
  .line 15
  stloc.s 0	// 't' (class [mscorlib]System.Threading.Thread)
  .line 16
  ldloc.0	// 't' (class [mscorlib]System.Threading.Thread)
  .line 16
  callvirt instance void [mscorlib]System.Threading.Thread::'Start' ()
  {
    .locals init (
,
      [2] class 'tls.Semaphore' '$sem1' /* refcount=3 */ 
    )
    .line 17
    ldsfld class 'tls.Semaphore' tls.$data::'sem1'
    stloc.s 2	// '$sem1' (class 'tls.Semaphore')
  }
  .try
  {
    .line 17
    .line 17
    ldloc.2	// '$sem1' (class 'tls.Semaphore')
    call void class [mscorlib]System.Threading.Monitor::Enter(object)
    .line 18
    ldsfld class 'tls.Semaphore' tls.$data::'sem1'
    ldc.i4 1
    .line 18
    stfld bool 'tls.Semaphore'::'go'
    leave L8_tls
  }
  finally
  {
    .line 17
    ldloc.2	// '$sem1' (class 'tls.Semaphore')
    call void class [mscorlib]System.Threading.Monitor::Exit(object)
    endfinally
  }
L8_tls:
  .line 20
  ldloc.0	// 't' (class [mscorlib]System.Threading.Thread)
  .line 20
  callvirt instance void [mscorlib]System.Threading.Thread::'Join' ()
  .line 21
  ldsfld int32 tls.$data::'i0'
  .line 21
  call void [mscorlib]System.Console::'WriteLine' (int32)
  .line 22
  ldsfld int32 tls.$data::'i0'
  ldc.i4 42
  beq L7_tls
  ldstr "Assertion failed at: tls.d(22)"
  newobj instance void [dnetlib]core.AssertError::.ctor(string)
  .line 22
  throw
L7_tls:
  .line 23
  ret
}

.class private auto 'tls.main.Closure1' extends [dnetlib]core.Object
{
  .method public virtual newslot hidebysig instance void 'asyncWork' ()
  {
    .line 7
    .maxstack 2
    br L0_tls
L5_tls:
    {
      .locals init (
,
        [0] class 'tls.Semaphore' '$sem1' /* refcount=3 */ 
      )
      .line 9
      ldsfld class 'tls.Semaphore' tls.$data::'sem1'
      stloc.s 0	// '$sem1' (class 'tls.Semaphore')
    }
    .try
    {
      .line 9
      .line 9
      ldloc.0	// '$sem1' (class 'tls.Semaphore')
      call void class [mscorlib]System.Threading.Monitor::Enter(object)
      .line 10
      ldsfld class 'tls.Semaphore' tls.$data::'sem1'
      .line 10
      ldfld bool 'tls.Semaphore'::'go'
      brtrue L2_tls
      br L4_tls
L2_tls:
      leave L3_tls
L4_tls:
      leave L9_tls
    }
    finally
    {
      .line 9
      ldloc.0	// '$sem1' (class 'tls.Semaphore')
      call void class [mscorlib]System.Threading.Monitor::Exit(object)
      endfinally
    }
L9_tls:
L0_tls:
    ldc.i4 1
    brtrue L5_tls
L3_tls:
    ldc.i4 13
    .line 13
    stsfld int32 tls.$data::'i0'
    .line 14
    ret
  }
  // default ctor, compiler-generated
  .method public hidebysig instance void .ctor()
  {
    ldarg.0
    call instance void [dnetlib]core.Object::.ctor()
    ret
  }
} // end of 'tls.main.Closure1'


