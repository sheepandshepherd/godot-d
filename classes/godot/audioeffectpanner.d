/**
Adds a Panner audio effect to an Audio bus. Pans sound left or right.
*/
module godot.audioeffectpanner;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.audioeffect;
/**
Adds a Panner audio effect to an Audio bus. Pans sound left or right.

Determines how much of an audio signal is sent to the left and right buses.
*/
@GodotBaseClass struct AudioEffectPanner
{
	static immutable string _GODOT_internal_name = "AudioEffectPanner";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in AudioEffectPanner other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectPanner opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectPanner _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectPanner");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectPanner)(constructor());
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_pan;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pan") = _GODOT_set_pan;
	/**
	
	*/
	void setPan(in double cpanume)
	{
		_GODOT_set_pan.bind("AudioEffectPanner", "set_pan");
		ptrcall!(void)(_GODOT_set_pan, _godot_object, cpanume);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_pan;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pan") = _GODOT_get_pan;
	/**
	
	*/
	double getPan() const
	{
		_GODOT_get_pan.bind("AudioEffectPanner", "get_pan");
		return ptrcall!(double)(_GODOT_get_pan, _godot_object);
	}
	/**
	Pan position. Value can range from -1 (fully left) to 1 (fully right).
	*/
	@property double pan()
	{
		return getPan();
	}
	/// ditto
	@property void pan(double v)
	{
		setPan(v);
	}
}
