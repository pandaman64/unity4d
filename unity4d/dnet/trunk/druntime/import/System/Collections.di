module System.Collections;
import System.Globalization;
import System;
import System.Runtime.Serialization;
public:
pragma(assembly,"mscorlib"){
class CaseInsensitiveComparer : System.__object{
this (System.Globalization.CultureInfo);
this ();
static System.Collections.CaseInsensitiveComparer get_Default();
static System.Collections.CaseInsensitiveComparer get_DefaultInvariant();
System.Int32 Compare(System.__object,System.__object);
}
class CaseInsensitiveHashCodeProvider : System.__object{
this ();
this (System.Globalization.CultureInfo);
static System.Collections.CaseInsensitiveHashCodeProvider get_Default();
static System.Collections.CaseInsensitiveHashCodeProvider get_DefaultInvariant();
System.Int32 GetHashCode(System.__object);
}
class CollectionBase : System.__object{
System.Int32 get_Capacity();
System.Void set_Capacity(System.Int32);
System.Int32 get_Count();
System.Void Clear();
System.Void RemoveAt(System.Int32);
System.Collections.IEnumerator GetEnumerator();
}
class DictionaryBase : System.__object{
System.Int32 get_Count();
System.Void CopyTo(System.Array,System.Int32);
System.Void Clear();
System.Collections.IDictionaryEnumerator GetEnumerator();
}
class ReadOnlyCollectionBase : System.__object{
System.Int32 get_Count();
System.Collections.IEnumerator GetEnumerator();
}
class Queue : System.__object{
this ();
this (System.Int32);
this (System.Int32,System.Single);
this (System.Collections.ICollection);
System.Int32 get_Count();
System.__object Clone();
System.Boolean get_IsSynchronized();
System.__object get_SyncRoot();
System.Void Clear();
System.Void CopyTo(System.Array,System.Int32);
System.Void Enqueue(System.__object);
System.Collections.IEnumerator GetEnumerator();
System.__object Dequeue();
System.__object Peek();
static System.Collections.Queue Synchronized(System.Collections.Queue);
System.Boolean Contains(System.__object);
System.__object[] ToArray();
System.Void TrimToSize();
}
class ArrayList : System.__object{
this ();
this (System.Int32);
this (System.Collections.ICollection);
System.Int32 get_Capacity();
System.Void set_Capacity(System.Int32);
System.Int32 get_Count();
System.Boolean get_IsFixedSize();
System.Boolean get_IsReadOnly();
System.Boolean get_IsSynchronized();
System.__object get_SyncRoot();
System.__object get_Item(System.Int32);
System.Void set_Item(System.Int32,System.__object);
static System.Collections.ArrayList Adapter(System.Collections.IList);
System.Int32 Add(System.__object);
System.Void AddRange(System.Collections.ICollection);
System.Int32 BinarySearch(System.Int32,System.Int32,System.__object,System.Collections.IComparer);
System.Int32 BinarySearch(System.__object);
System.Int32 BinarySearch(System.__object,System.Collections.IComparer);
System.Void Clear();
System.__object Clone();
System.Boolean Contains(System.__object);
System.Void CopyTo(System.Array);
System.Void CopyTo(System.Array,System.Int32);
System.Void CopyTo(System.Int32,System.Array,System.Int32,System.Int32);
static System.Collections.IList FixedSize(System.Collections.IList);
static System.Collections.ArrayList FixedSize(System.Collections.ArrayList);
System.Collections.IEnumerator GetEnumerator();
System.Collections.IEnumerator GetEnumerator(System.Int32,System.Int32);
System.Int32 IndexOf(System.__object);
System.Int32 IndexOf(System.__object,System.Int32);
System.Int32 IndexOf(System.__object,System.Int32,System.Int32);
System.Void Insert(System.Int32,System.__object);
System.Void InsertRange(System.Int32,System.Collections.ICollection);
System.Int32 LastIndexOf(System.__object);
System.Int32 LastIndexOf(System.__object,System.Int32);
System.Int32 LastIndexOf(System.__object,System.Int32,System.Int32);
static System.Collections.IList ReadOnly(System.Collections.IList);
static System.Collections.ArrayList ReadOnly(System.Collections.ArrayList);
System.Void Remove(System.__object);
System.Void RemoveAt(System.Int32);
System.Void RemoveRange(System.Int32,System.Int32);
static System.Collections.ArrayList Repeat(System.__object,System.Int32);
System.Void Reverse();
System.Void Reverse(System.Int32,System.Int32);
System.Void SetRange(System.Int32,System.Collections.ICollection);
System.Collections.ArrayList GetRange(System.Int32,System.Int32);
System.Void Sort();
System.Void Sort(System.Collections.IComparer);
System.Void Sort(System.Int32,System.Int32,System.Collections.IComparer);
static System.Collections.IList Synchronized(System.Collections.IList);
static System.Collections.ArrayList Synchronized(System.Collections.ArrayList);
System.__object[] ToArray();
System.Array ToArray(System.Type);
System.Void TrimToSize();
}
class BitArray : System.__object{
this (System.Int32,System.Boolean);
this (System.Int32);
this (System.Byte[]);
this (System.Boolean[]);
this (System.Int32[]);
this (System.Collections.BitArray);
System.Boolean Get(System.Int32);
System.Void Set(System.Int32,System.Boolean);
System.Boolean get_Item(System.Int32);
System.Void set_Item(System.Int32,System.Boolean);
System.Void SetAll(System.Boolean);
System.Collections.BitArray And(System.Collections.BitArray);
System.Collections.BitArray Or(System.Collections.BitArray);
System.Collections.BitArray Xor(System.Collections.BitArray);
System.Collections.BitArray Not();
System.Int32 get_Length();
System.Void set_Length(System.Int32);
System.Void CopyTo(System.Array,System.Int32);
System.Int32 get_Count();
System.__object Clone();
System.__object get_SyncRoot();
System.Boolean get_IsReadOnly();
System.Boolean get_IsSynchronized();
System.Collections.IEnumerator GetEnumerator();
}
class Stack : System.__object{
this ();
this (System.Int32);
this (System.Collections.ICollection);
System.Int32 get_Count();
System.Boolean get_IsSynchronized();
System.__object get_SyncRoot();
System.Void Clear();
System.__object Clone();
System.Boolean Contains(System.__object);
System.Void CopyTo(System.Array,System.Int32);
System.Collections.IEnumerator GetEnumerator();
System.__object Peek();
System.__object Pop();
System.Void Push(System.__object);
static System.Collections.Stack Synchronized(System.Collections.Stack);
System.__object[] ToArray();
}
class Comparer : System.__object{
this (System.Globalization.CultureInfo);
System.Int32 Compare(System.__object,System.__object);
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
}
class Hashtable : System.__object{
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
System.Void Add(System.__object,System.__object);
System.Void Clear();
System.__object Clone();
System.Boolean Contains(System.__object);
System.Boolean ContainsKey(System.__object);
System.Boolean ContainsValue(System.__object);
System.Void CopyTo(System.Array,System.Int32);
System.__object get_Item(System.__object);
System.Void set_Item(System.__object,System.__object);
System.Collections.IDictionaryEnumerator GetEnumerator();
System.Boolean get_IsReadOnly();
System.Boolean get_IsFixedSize();
System.Boolean get_IsSynchronized();
System.Collections.ICollection get_Keys();
System.Collections.ICollection get_Values();
System.Void Remove(System.__object);
System.__object get_SyncRoot();
System.Int32 get_Count();
static System.Collections.Hashtable Synchronized(System.Collections.Hashtable);
System.Void GetObjectData(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext);
System.Void OnDeserialization(System.__object);
}
class DictionaryEntry : System.ValueType{
this (System.__object,System.__object);
System.__object get_Key();
System.Void set_Key(System.__object);
System.__object get_Value();
System.Void set_Value(System.__object);
}
interface ICollection{
System.Void CopyTo(System.Array,System.Int32);
System.Int32 get_Count();
System.__object get_SyncRoot();
System.Boolean get_IsSynchronized();
}
interface IComparer{
System.Int32 Compare(System.__object,System.__object);
}
interface IDictionary{
System.__object get_Item(System.__object);
System.Void set_Item(System.__object,System.__object);
System.Collections.ICollection get_Keys();
System.Collections.ICollection get_Values();
System.Boolean Contains(System.__object);
System.Void Add(System.__object,System.__object);
System.Void Clear();
System.Boolean get_IsReadOnly();
System.Boolean get_IsFixedSize();
System.Collections.IDictionaryEnumerator GetEnumerator();
System.Void Remove(System.__object);
}
interface IDictionaryEnumerator{
System.__object get_Key();
System.__object get_Value();
System.Collections.DictionaryEntry get_Entry();
}
interface IEnumerable{
System.Collections.IEnumerator GetEnumerator();
}
interface IEnumerator{
System.Boolean MoveNext();
System.__object get_Current();
System.Void Reset();
}
interface IEqualityComparer{
System.Boolean Equals(System.__object,System.__object);
System.Int32 GetHashCode(System.__object);
}
interface IHashCodeProvider{
System.Int32 GetHashCode(System.__object);
}
interface IList{
System.__object get_Item(System.Int32);
System.Void set_Item(System.Int32,System.__object);
System.Int32 Add(System.__object);
System.Boolean Contains(System.__object);
System.Void Clear();
System.Boolean get_IsReadOnly();
System.Boolean get_IsFixedSize();
System.Int32 IndexOf(System.__object);
System.Void Insert(System.Int32,System.__object);
System.Void Remove(System.__object);
System.Void RemoveAt(System.Int32);
}
class SortedList : System.__object{
this (System.Int32);
this ();
this (System.Collections.IComparer);
this (System.Collections.IComparer,System.Int32);
this (System.Collections.IDictionary);
this (System.Collections.IDictionary,System.Collections.IComparer);
System.Void Add(System.__object,System.__object);
System.Int32 get_Capacity();
System.Void set_Capacity(System.Int32);
System.Int32 get_Count();
System.Collections.ICollection get_Keys();
System.Collections.ICollection get_Values();
System.Boolean get_IsReadOnly();
System.Boolean get_IsFixedSize();
System.Boolean get_IsSynchronized();
System.__object get_SyncRoot();
System.Void Clear();
System.__object Clone();
System.Boolean Contains(System.__object);
System.Boolean ContainsKey(System.__object);
System.Boolean ContainsValue(System.__object);
System.Void CopyTo(System.Array,System.Int32);
System.__object GetByIndex(System.Int32);
System.Collections.IDictionaryEnumerator GetEnumerator();
System.__object GetKey(System.Int32);
System.Collections.IList GetKeyList();
System.Collections.IList GetValueList();
System.__object get_Item(System.__object);
System.Void set_Item(System.__object,System.__object);
System.Int32 IndexOfKey(System.__object);
System.Int32 IndexOfValue(System.__object);
System.Void RemoveAt(System.Int32);
System.Void Remove(System.__object);
System.Void SetByIndex(System.Int32,System.__object);
static System.Collections.SortedList Synchronized(System.Collections.SortedList);
System.Void TrimToSize();
}
interface IStructuralEquatable{
System.Boolean Equals(System.__object,System.Collections.IEqualityComparer);
System.Int32 GetHashCode(System.Collections.IEqualityComparer);
}
interface IStructuralComparable{
System.Int32 CompareTo(System.__object,System.Collections.IComparer);
}
class StructuralComparisons : System.__object{
static System.Collections.IComparer get_StructuralComparer();
static System.Collections.IEqualityComparer get_StructuralEqualityComparer();
}
}
