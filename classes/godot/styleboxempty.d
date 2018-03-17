/**
Empty stylebox (does not display anything).
*/
module godot.styleboxempty;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.stylebox;
/**
Empty stylebox (does not display anything).

Empty stylebox (really does not display anything).
*/
@GodotBaseClass struct StyleBoxEmpty
{
	static immutable string _GODOT_internal_name = "StyleBoxEmpty";
public:
@nogc nothrow:
	union { godot_object _godot_object; StyleBox _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in StyleBoxEmpty other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StyleBoxEmpty opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static StyleBoxEmpty _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("StyleBoxEmpty");
		if(constructor is null) return typeof(this).init;
		return cast(StyleBoxEmpty)(constructor());
	}
}
