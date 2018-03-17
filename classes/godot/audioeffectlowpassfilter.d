/**
Adds a low pass filter to the Audio Bus.
*/
module godot.audioeffectlowpassfilter;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.audioeffectfilter;
/**
Adds a low pass filter to the Audio Bus.

Cuts frequencies higher than the $(D cutoffHz) and allows lower frequencies to pass.
*/
@GodotBaseClass struct AudioEffectLowPassFilter
{
	static immutable string _GODOT_internal_name = "AudioEffectLowPassFilter";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffectFilter _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in AudioEffectLowPassFilter other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectLowPassFilter opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectLowPassFilter _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectLowPassFilter");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectLowPassFilter)(constructor());
	}
}
