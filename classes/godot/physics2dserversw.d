/**
Software implementation of $(D Physics2DServer).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physics2dserversw;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.physics2dserver;
/**
Software implementation of $(D Physics2DServer).

This class exposes no new methods or properties and should not be used, as $(D Physics2DServer) automatically selects the best implementation available.
*/
@GodotBaseClass struct Physics2DServerSW
{
	static immutable string _GODOT_internal_name = "Physics2DServerSW";
public:
@nogc nothrow:
	union { godot_object _godot_object; Physics2DServerSingleton _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Physics2DServerSW other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Physics2DServerSW opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Physics2DServerSW _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Physics2DServerSW");
		if(constructor is null) return typeof(this).init;
		return cast(Physics2DServerSW)(constructor());
	}
}
