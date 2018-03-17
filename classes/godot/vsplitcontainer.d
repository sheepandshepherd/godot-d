/**
Vertical split container.
*/
module godot.vsplitcontainer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.splitcontainer;
/**
Vertical split container.

See $(D SplitContainer). This goes from left to right.
*/
@GodotBaseClass struct VSplitContainer
{
	static immutable string _GODOT_internal_name = "VSplitContainer";
public:
@nogc nothrow:
	union { godot_object _godot_object; SplitContainer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VSplitContainer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VSplitContainer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VSplitContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VSplitContainer");
		if(constructor is null) return typeof(this).init;
		return cast(VSplitContainer)(constructor());
	}
}
