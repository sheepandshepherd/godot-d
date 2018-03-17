/**
Horizontal slider.
*/
module godot.hslider;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.slider;
/**
Horizontal slider.

See $(D Slider). This one goes from left (min) to right (max).
*/
@GodotBaseClass struct HSlider
{
	static immutable string _GODOT_internal_name = "HSlider";
public:
@nogc nothrow:
	union { godot_object _godot_object; Slider _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in HSlider other) const { return _godot_object.ptr is other._godot_object.ptr; }
	HSlider opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static HSlider _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("HSlider");
		if(constructor is null) return typeof(this).init;
		return cast(HSlider)(constructor());
	}
}
