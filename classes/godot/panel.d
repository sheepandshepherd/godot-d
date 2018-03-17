/**
Provides an opaque background for $(D Control) children.
*/
module godot.panel;
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
Provides an opaque background for $(D Control) children.

Panel is a $(D Control) that displays an opaque background. It's commonly used as a parent and container for other types of $(D Control) nodes.
*/
@GodotBaseClass struct Panel
{
	static immutable string _GODOT_internal_name = "Panel";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Panel other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Panel opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Panel _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Panel");
		if(constructor is null) return typeof(this).init;
		return cast(Panel)(constructor());
	}
}
