/**
Reference frame for GUI.
*/
module godot.referencerect;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.control;
/**
Reference frame for GUI.

It's just like an empty control, except a red box is displayed while editing around its size at all times.
*/
@GodotBaseClass struct ReferenceRect
{
	static immutable string _GODOT_internal_name = "ReferenceRect";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ReferenceRect other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ReferenceRect opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ReferenceRect _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ReferenceRect");
		if(constructor is null) return typeof(this).init;
		return cast(ReferenceRect)(constructor());
	}
}
