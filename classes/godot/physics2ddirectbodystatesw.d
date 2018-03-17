/**
Software implementation of $(D Physics2DDirectBodyState).
*/
module godot.physics2ddirectbodystatesw;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.physics2ddirectbodystate;
/**
Software implementation of $(D Physics2DDirectBodyState).

This object exposes no new methods or properties and should not be used, as $(D Physics2DDirectBodyState) selects the best implementation available.
*/
@GodotBaseClass struct Physics2DDirectBodyStateSW
{
	static immutable string _GODOT_internal_name = "Physics2DDirectBodyStateSW";
public:
@nogc nothrow:
	union { godot_object _godot_object; Physics2DDirectBodyState _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Physics2DDirectBodyStateSW other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Physics2DDirectBodyStateSW opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Physics2DDirectBodyStateSW _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Physics2DDirectBodyStateSW");
		if(constructor is null) return typeof(this).init;
		return cast(Physics2DDirectBodyStateSW)(constructor());
	}
}
