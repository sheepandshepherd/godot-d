/**
Steps through items in a given input.
*/
module godot.visualscriptiterator;
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
Steps through items in a given input.

This node steps through each item in a given input. Input can be any sequence data type, such as an $(D Array) or $(D String). When each item has been processed, execution passed out the `exit` Sequence port.
$(B Input Ports:)
- Sequence: `for (elem) in (input)`
- Data (variant): `input`
$(B Output Ports:)
- Sequence: `each`
- Sequence: `exit`
- Data (variant): `elem`
*/
@GodotBaseClass struct VisualScriptIterator
{
	static immutable string _GODOT_internal_name = "VisualScriptIterator";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptIterator other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptIterator opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptIterator _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptIterator");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptIterator)(constructor());
	}
}
