/**
Horizontal box container.
*/
module godot.hboxcontainer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.boxcontainer;
/**
Horizontal box container.

See $(D BoxContainer).
*/
@GodotBaseClass struct HBoxContainer
{
	static immutable string _GODOT_internal_name = "HBoxContainer";
public:
@nogc nothrow:
	union { godot_object _godot_object; BoxContainer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in HBoxContainer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	HBoxContainer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static HBoxContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("HBoxContainer");
		if(constructor is null) return typeof(this).init;
		return cast(HBoxContainer)(constructor());
	}
}
