/**
Base class for audio streams.
*/
module godot.audiostream;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.resource;
/**
Base class for audio streams.

Audio streams are used for music playback, or other types of streamed sounds that don't fit or require more flexibility than a $(D Sample).
*/
@GodotBaseClass struct AudioStream
{
	static immutable string _GODOT_internal_name = "AudioStream";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in AudioStream other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioStream opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioStream _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioStream");
		if(constructor is null) return typeof(this).init;
		return cast(AudioStream)(constructor());
	}
	package(godot) static GodotMethod!(double) _GODOT_get_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_length") = _GODOT_get_length;
	/**
	
	*/
	double getLength() const
	{
		_GODOT_get_length.bind("AudioStream", "get_length");
		return ptrcall!(double)(_GODOT_get_length, _godot_object);
	}
}
