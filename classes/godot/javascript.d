/**
Singleton that connects the engine with the browser's JavaScript context in HTML5 export.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.javascript;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
/**
Singleton that connects the engine with the browser's JavaScript context in HTML5 export.

The JavaScript singleton is implemented only in HTML5 export. It's used to access the browser's JavaScript context. This allows interaction with embedding pages or calling third-party JavaScript APIs.
*/
@GodotBaseClass struct JavaScriptSingleton
{
	static immutable string _GODOT_internal_name = "JavaScript";
public:
@nogc nothrow:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "JavaScript";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))_godot_api.godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in JavaScriptSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	JavaScriptSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static JavaScriptSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("JavaScript");
		if(constructor is null) return typeof(this).init;
		return cast(JavaScriptSingleton)(constructor());
	}
	package(godot) static GodotMethod!(Variant, String, bool) _GODOT_eval;
	package(godot) alias _GODOT_methodBindInfo(string name : "eval") = _GODOT_eval;
	/**
	Execute the string `code` as JavaScript code within the browser window. This is a call to the actual global JavaScript function `eval()`.
	If `use_global_execution_context` is `true`, the code will be evaluated in the global execution context. Otherwise, it is evaluated in the execution context of a function within the engine's runtime environment.
	*/
	Variant eval(StringArg0)(in StringArg0 code, in bool use_global_execution_context = false)
	{
		_GODOT_eval.bind("JavaScript", "eval");
		return ptrcall!(Variant)(_GODOT_eval, _godot_object, code, use_global_execution_context);
	}
}
/// Returns: the JavaScriptSingleton
@property @nogc nothrow pragma(inline, true)
JavaScriptSingleton JavaScript()
{
	return JavaScriptSingleton._GODOT_singleton();
}
