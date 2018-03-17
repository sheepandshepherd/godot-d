/**
Used with $(D DynamicFont) to describe the location of a font file.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.dynamicfontdata;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
/**
Used with $(D DynamicFont) to describe the location of a font file.

Used with $(D DynamicFont) to describe the location of a vector font file for dynamic rendering at runtime.
*/
@GodotBaseClass struct DynamicFontData
{
	static immutable string _GODOT_internal_name = "DynamicFontData";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in DynamicFontData other) const { return _godot_object.ptr is other._godot_object.ptr; }
	DynamicFontData opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static DynamicFontData _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("DynamicFontData");
		if(constructor is null) return typeof(this).init;
		return cast(DynamicFontData)(constructor());
	}
	/// 
	enum Hinting : int
	{
		/**
		Disable font hinting (smoother but less crisp).
		*/
		hintingNone = 0,
		/**
		Use the light font hinting mode.
		*/
		hintingLight = 1,
		/**
		Use the default font hinting mode (crisper but less smooth).
		*/
		hintingNormal = 2,
	}
	/// 
	enum Constants : int
	{
		hintingNone = 0,
		hintingLight = 1,
		hintingNormal = 2,
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_font_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_font_path") = _GODOT_set_font_path;
	/**
	
	*/
	void setFontPath(StringArg0)(in StringArg0 path)
	{
		_GODOT_set_font_path.bind("DynamicFontData", "set_font_path");
		ptrcall!(void)(_GODOT_set_font_path, _godot_object, path);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_font_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_font_path") = _GODOT_get_font_path;
	/**
	
	*/
	String getFontPath() const
	{
		_GODOT_get_font_path.bind("DynamicFontData", "get_font_path");
		return ptrcall!(String)(_GODOT_get_font_path, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_hinting;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_hinting") = _GODOT_set_hinting;
	/**
	
	*/
	void setHinting(in long mode)
	{
		_GODOT_set_hinting.bind("DynamicFontData", "set_hinting");
		ptrcall!(void)(_GODOT_set_hinting, _godot_object, mode);
	}
	package(godot) static GodotMethod!(DynamicFontData.Hinting) _GODOT_get_hinting;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_hinting") = _GODOT_get_hinting;
	/**
	
	*/
	DynamicFontData.Hinting getHinting() const
	{
		_GODOT_get_hinting.bind("DynamicFontData", "get_hinting");
		return ptrcall!(DynamicFontData.Hinting)(_GODOT_get_hinting, _godot_object);
	}
	/**
	The font hinting mode used by FreeType.
	*/
	@property DynamicFontData.Hinting hinting()
	{
		return getHinting();
	}
	/// ditto
	@property void hinting(long v)
	{
		setHinting(v);
	}
	/**
	The path to the vector font file.
	*/
	@property String fontPath()
	{
		return getFontPath();
	}
	/// ditto
	@property void fontPath(String v)
	{
		setFontPath(v);
	}
}
