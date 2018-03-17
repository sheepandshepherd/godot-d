/**
Gets a variable's value.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptvariableget;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
/**
Gets a variable's value.

Returns a variable's value. "Var Name" must be supplied, with an optional type.
$(B Input Ports:)
none
$(B Output Ports:)
- Data (variant): `value`
*/
@GodotBaseClass struct VisualScriptVariableGet
{
	static immutable string _GODOT_internal_name = "VisualScriptVariableGet";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptVariableGet other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptVariableGet opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptVariableGet _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptVariableGet");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptVariableGet)(constructor());
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_variable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_variable") = _GODOT_set_variable;
	/**
	
	*/
	void setVariable(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_variable.bind("VisualScriptVariableGet", "set_variable");
		ptrcall!(void)(_GODOT_set_variable, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_variable;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_variable") = _GODOT_get_variable;
	/**
	
	*/
	String getVariable() const
	{
		_GODOT_get_variable.bind("VisualScriptVariableGet", "get_variable");
		return ptrcall!(String)(_GODOT_get_variable, _godot_object);
	}
	/**
	The variable's name.
	*/
	@property String varName()
	{
		return getVariable();
	}
	/// ditto
	@property void varName(String v)
	{
		setVariable(v);
	}
}
