/**
A Visual Script node returning a singleton from $(D @GlobalScope)
*/
module godot.visualscriptenginesingleton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
/**
A Visual Script node returning a singleton from $(D @GlobalScope)


*/
@GodotBaseClass struct VisualScriptEngineSingleton
{
	static immutable string _GODOT_internal_name = "VisualScriptEngineSingleton";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptEngineSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptEngineSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptEngineSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptEngineSingleton");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptEngineSingleton)(constructor());
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_singleton;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_singleton") = _GODOT_set_singleton;
	/**
	
	*/
	void setSingleton(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_singleton.bind("VisualScriptEngineSingleton", "set_singleton");
		ptrcall!(void)(_GODOT_set_singleton, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_singleton;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_singleton") = _GODOT_get_singleton;
	/**
	
	*/
	String getSingleton()
	{
		_GODOT_get_singleton.bind("VisualScriptEngineSingleton", "get_singleton");
		return ptrcall!(String)(_GODOT_get_singleton, _godot_object);
	}
	/**
	The singleton's name.
	*/
	@property String constant()
	{
		return getSingleton();
	}
	/// ditto
	@property void constant(String v)
	{
		setSingleton(v);
	}
}
