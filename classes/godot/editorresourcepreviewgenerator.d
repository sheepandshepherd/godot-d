/**
Custom generator of previews.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorresourcepreviewgenerator;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.texture;
import godot.resource;
/**
Custom generator of previews.

Custom code to generate previews. Please check "file_dialog/thumbnail_size" in EditorSettings to find out the right size to do previews at.
*/
@GodotBaseClass struct EditorResourcePreviewGenerator
{
	static immutable string _GODOT_internal_name = "EditorResourcePreviewGenerator";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in EditorResourcePreviewGenerator other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorResourcePreviewGenerator opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorResourcePreviewGenerator _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorResourcePreviewGenerator");
		if(constructor is null) return typeof(this).init;
		return cast(EditorResourcePreviewGenerator)(constructor());
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_handles;
	package(godot) alias _GODOT_methodBindInfo(string name : "handles") = _GODOT_handles;
	/**
	Return if your generator supports this resource type.
	*/
	bool handles(StringArg0)(in StringArg0 type)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(type);
		String _GODOT_method_name = String("handles");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	package(godot) static GodotMethod!(Texture, Resource) _GODOT_generate;
	package(godot) alias _GODOT_methodBindInfo(string name : "generate") = _GODOT_generate;
	/**
	Generate a preview from a given resource. This must be always implemented.
	Returning an empty texture is an OK way to fail and let another generator take care.
	Care must be taken because this function is always called from a thread (not the main thread).
	*/
	Ref!Texture generate(Resource from)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(from);
		String _GODOT_method_name = String("generate");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Texture);
	}
	package(godot) static GodotMethod!(Texture, String) _GODOT_generate_from_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "generate_from_path") = _GODOT_generate_from_path;
	/**
	Generate a preview directly from a path, implementing this is optional, as default code will load and call generate()
	Returning an empty texture is an OK way to fail and let another generator take care.
	Care must be taken because this function is always called from a thread (not the main thread).
	*/
	Ref!Texture generateFromPath(StringArg0)(in StringArg0 path)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(path);
		String _GODOT_method_name = String("generate_from_path");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Texture);
	}
}
