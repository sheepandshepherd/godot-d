/**
Class for displaying popups with a panel background.
*/
module godot.popuppanel;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.popup;
/**
Class for displaying popups with a panel background.

In some cases it might be simpler to use than $(D Popup), since it provides a configurable background. If you are making windows, better check $(D WindowDialog).
*/
@GodotBaseClass struct PopupPanel
{
	static immutable string _GODOT_internal_name = "PopupPanel";
public:
@nogc nothrow:
	union { godot_object _godot_object; Popup _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in PopupPanel other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PopupPanel opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PopupPanel _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PopupPanel");
		if(constructor is null) return typeof(this).init;
		return cast(PopupPanel)(constructor());
	}
}
