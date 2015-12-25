module System.Collections;
import System.Globalization;
import System;
import System.Runtime.Serialization;
public:
pragma(assembly,"mscorlib"){
class CaseInsensitiveComparer : System.Object{
this (System.Globalization.CultureInfo);
this ();
static CaseInsensitiveComparer get_Default();
static CaseInsensitiveComparer get_DefaultInvariant();
Int32 Compare(System.Object,System.Object);
}
class CaseInsensitiveHashCodeProvider : System.Object{
this ();
this (System.Globalization.CultureInfo);
static CaseInsensitiveHashCodeProvider get_Default();
static CaseInsensitiveHashCodeProvider get_DefaultInvariant();
Int32 GetHashCode(System.Object);
}
class CollectionBase : System.Object{
Int32 get_Capacity();
Void set_Capacity(System.Int32);
Int32 get_Count();
Void Clear();
Void RemoveAt(System.Int32);
IEnumerator GetEnumerator();
}
class DictionaryBase : System.Object{
Int32 get_Count();
Void CopyTo(System.Array,System.Int32);
Void Clear();
IDictionaryEnumerator GetEnumerator();
}
class ReadOnlyCollectionBase : System.Object{
Int32 get_Count();
IEnumerator GetEnumerator();
}
class Queue : System.Object{
this ();
this (System.Int32);
this (System.Int32,System.Single);
this (System.Collections.ICollection);
Int32 get_Count();
Object Clone();
Boolean get_IsSynchronized();
Object get_SyncRoot();
Void Clear();
Void CopyTo(System.Array,System.Int32);
Void Enqueue(System.Object);
IEnumerator GetEnumerator();
Object Dequeue();
Object Peek();
static Queue Synchronized(System.Collections.Queue);
Boolean Contains(System.Object);
Object[] ToArray();
Void TrimToSize();
}
class ArrayList : System.Object{
this ();
this (System.Int32);
this (System.Collections.ICollection);
Int32 get_Capacity();
Void set_Capacity(System.Int32);
Int32 get_Count();
Boolean get_IsFixedSize();
Boolean get_IsReadOnly();
Boolean get_IsSynchronized();
Object get_SyncRoot();
Object get_Item(System.Int32);
Void set_Item(System.Int32,System.Object);
static ArrayList Adapter(System.Collections.IList);
Int32 Add(System.Object);
Void AddRange(System.Collections.ICollection);
Int32 BinarySearch(System.Int32,System.Int32,System.Object,System.Collections.IComparer);
Int32 BinarySearch(System.Object);
Int32 BinarySearch(System.Object,System.Collections.IComparer);
Void Clear();
Object Clone();
Boolean Contains(System.Object);
Void CopyTo(System.Array);
Void CopyTo(System.Array,System.Int32);
Void CopyTo(System.Int32,System.Array,System.Int32,System.Int32);
static IList FixedSize(System.Collections.IList);
static ArrayList FixedSize(System.Collections.ArrayList);
IEnumerator GetEnumerator();
IEnumerator GetEnumerator(System.Int32,System.Int32);
Int32 IndexOf(System.Object);
Int32 IndexOf(System.Object,System.Int32);
Int32 IndexOf(System.Object,System.Int32,System.Int32);
Void Insert(System.Int32,System.Object);
Void InsertRange(System.Int32,System.Collections.ICollection);
Int32 LastIndexOf(System.Object);
Int32 LastIndexOf(System.Object,System.Int32);
Int32 LastIndexOf(System.Object,System.Int32,System.Int32);
static IList ReadOnly(System.Collections.IList);
static ArrayList ReadOnly(System.Collections.ArrayList);
Void Remove(System.Object);
Void RemoveAt(System.Int32);
Void RemoveRange(System.Int32,System.Int32);
static ArrayList Repeat(System.Object,System.Int32);
Void Reverse();
Void Reverse(System.Int32,System.Int32);
Void SetRange(System.Int32,System.Collections.ICollection);
ArrayList GetRange(System.Int32,System.Int32);
Void Sort();
Void Sort(System.Collections.IComparer);
Void Sort(System.Int32,System.Int32,System.Collections.IComparer);
static IList Synchronized(System.Collections.IList);
static ArrayList Synchronized(System.Collections.ArrayList);
Object[] ToArray();
Array ToArray(System.Type);
Void TrimToSize();
}
class BitArray : System.Object{
this (System.Int32,System.Boolean);
this (System.Int32);
this (System.Byte[]);
this (System.Boolean[]);
this (System.Int32[]);
this (System.Collections.BitArray);
Boolean Get(System.Int32);
Void Set(System.Int32,System.Boolean);
Boolean get_Item(System.Int32);
Void set_Item(System.Int32,System.Boolean);
Void SetAll(System.Boolean);
BitArray And(System.Collections.BitArray);
BitArray Or(System.Collections.BitArray);
BitArray Xor(System.Collections.BitArray);
BitArray Not();
Int32 get_Length();
Void set_Length(System.Int32);
Void CopyTo(System.Array,System.Int32);
Int32 get_Count();
Object Clone();
Object get_SyncRoot();
Boolean get_IsReadOnly();
Boolean get_IsSynchronized();
IEnumerator GetEnumerator();
}
class Stack : System.Object{
this ();
this (System.Int32);
this (System.Collections.ICollection);
Int32 get_Count();
Boolean get_IsSynchronized();
Object get_SyncRoot();
Void Clear();
Object Clone();
Boolean Contains(System.Object);
Void CopyTo(System.Array,System.Int32);
IEnumerator GetEnumerator();
Object Peek();
Object Pop();
Void Push(System.Object);
static Stack Synchronized(System.Collections.Stack);
Object[] ToArray();
}
class Comparer : System.Object{
this (System.Globalization.CultureInfo);
Int32 Compare(System.Object,System.Object);
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class Hashtable : System.Object{
this ();
this (System.Int32);
this (System.Int32,System.Single);
this (System.Int32,System.Single,System.Collections.IHashCodeProvider,System.Collections.IComparer);
this (System.Int32,System.Single,System.Collections.IEqualityComparer);
this (System.Collections.IHashCodeProvider,System.Collections.IComparer);
this (System.Collections.IEqualityComparer);
this (System.Int32,System.Collections.IHashCodeProvider,System.Collections.IComparer);
this (System.Int32,System.Collections.IEqualityComparer);
this (System.Collections.IDictionary);
this (System.Collections.IDictionary,System.Single);
this (System.Collections.IDictionary,System.Collections.IHashCodeProvider,System.Collections.IComparer);
this (System.Collections.IDictionary,System.Collections.IEqualityComparer);
this (System.Collections.IDictionary,System.Single,System.Collections.IHashCodeProvider,System.Collections.IComparer);
this (System.Collections.IDictionary,System.Single,System.Collections.IEqualityComparer);
Void Add(System.Object,System.Object);
Void Clear();
Object Clone();
Boolean Contains(System.Object);
Boolean ContainsKey(System.Object);
Boolean ContainsValue(System.Object);
Void CopyTo(System.Array,System.Int32);
Object get_Item(System.Object);
Void set_Item(System.Object,System.Object);
IDictionaryEnumerator GetEnumerator();
Boolean get_IsReadOnly();
Boolean get_IsFixedSize();
Boolean get_IsSynchronized();
ICollection get_Keys();
ICollection get_Values();
Void Remove(System.Object);
Object get_SyncRoot();
Int32 get_Count();
static Hashtable Synchronized(System.Collections.Hashtable);
Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
Void OnDeserialization(System.Object);
}
class DictionaryEntry : System.ValueType{
this (System.Object,System.Object);
Object get_Key();
Void set_Key(System.Object);
Object get_Value();
Void set_Value(System.Object);
}
interface ICollection{
Void CopyTo(System.Array,System.Int32);
Int32 get_Count();
Object get_SyncRoot();
Boolean get_IsSynchronized();
}
interface IComparer{
Int32 Compare(System.Object,System.Object);
}
interface IDictionary{
Object get_Item(System.Object);
Void set_Item(System.Object,System.Object);
ICollection get_Keys();
ICollection get_Values();
Boolean Contains(System.Object);
Void Add(System.Object,System.Object);
Void Clear();
Boolean get_IsReadOnly();
Boolean get_IsFixedSize();
IDictionaryEnumerator GetEnumerator();
Void Remove(System.Object);
}
interface IDictionaryEnumerator{
Object get_Key();
Object get_Value();
DictionaryEntry get_Entry();
}
interface IEnumerable{
IEnumerator GetEnumerator();
}
interface IEnumerator{
Boolean MoveNext();
Object get_Current();
Void Reset();
}
interface IEqualityComparer{
Boolean Equals(System.Object,System.Object);
Int32 GetHashCode(System.Object);
}
interface IHashCodeProvider{
Int32 GetHashCode(System.Object);
}
interface IList{
Object get_Item(System.Int32);
Void set_Item(System.Int32,System.Object);
Int32 Add(System.Object);
Boolean Contains(System.Object);
Void Clear();
Boolean get_IsReadOnly();
Boolean get_IsFixedSize();
Int32 IndexOf(System.Object);
Void Insert(System.Int32,System.Object);
Void Remove(System.Object);
Void RemoveAt(System.Int32);
}
class SortedList : System.Object{
this (System.Int32);
this ();
this (System.Collections.IComparer);
this (System.Collections.IComparer,System.Int32);
this (System.Collections.IDictionary);
this (System.Collections.IDictionary,System.Collections.IComparer);
Void Add(System.Object,System.Object);
Int32 get_Capacity();
Void set_Capacity(System.Int32);
Int32 get_Count();
ICollection get_Keys();
ICollection get_Values();
Boolean get_IsReadOnly();
Boolean get_IsFixedSize();
Boolean get_IsSynchronized();
Object get_SyncRoot();
Void Clear();
Object Clone();
Boolean Contains(System.Object);
Boolean ContainsKey(System.Object);
Boolean ContainsValue(System.Object);
Void CopyTo(System.Array,System.Int32);
Object GetByIndex(System.Int32);
IDictionaryEnumerator GetEnumerator();
Object GetKey(System.Int32);
IList GetKeyList();
IList GetValueList();
Object get_Item(System.Object);
Void set_Item(System.Object,System.Object);
Int32 IndexOfKey(System.Object);
Int32 IndexOfValue(System.Object);
Void RemoveAt(System.Int32);
Void Remove(System.Object);
Void SetByIndex(System.Int32,System.Object);
static SortedList Synchronized(System.Collections.SortedList);
Void TrimToSize();
}
interface IStructuralEquatable{
Boolean Equals(System.Object,System.Collections.IEqualityComparer);
Int32 GetHashCode(System.Collections.IEqualityComparer);
}
interface IStructuralComparable{
Int32 CompareTo(System.Object,System.Collections.IComparer);
}
class StructuralComparisons : System.Object{
static IComparer get_StructuralComparer();
static IEqualityComparer get_StructuralEqualityComparer();
}
}
