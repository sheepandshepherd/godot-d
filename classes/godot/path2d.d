/**
Contains a $(D Curve2D) path for $(D PathFollow2D) nodes to follow.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.path2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.curve2d;
/**
Contains a $(D Curve2D) path for $(D PathFollow2D) nodes to follow.

Can have $(D PathFollow2D) child-nodes moving along the $(D Curve2D). See $(D PathFollow2D) for more information on this usage.
*/
@GodotBaseClass struct Path2D
{
	static immutable string _GODOT_internal_name = "Path2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Path2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Path2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Path2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Path2D");
		if(constructor is null) return typeof(this).init;
		return cast(Path2D)(constructor());
	}
	package(godot) static GodotMethod!(void, Curve2D) _GODOT_set_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_curve") = _GODOT_set_curve;
	/**
	
	*/
	void setCurve(Curve2D curve)
	{
		_GODOT_set_curve.bind("Path2D", "set_curve");
		ptrcall!(void)(_GODOT_set_curve, _godot_object, curve);
	}
	package(godot) static GodotMethod!(Curve2D) _GODOT_get_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_curve") = _GODOT_get_curve;
	/**
	
	*/
	Ref!Curve2D getCurve() const
	{
		_GODOT_get_curve.bind("Path2D", "get_curve");
		return ptrcall!(Curve2D)(_GODOT_get_curve, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__curve_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_curve_changed") = _GODOT__curve_changed;
	/**
	
	*/
	void _curveChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_curve_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	A $(D Curve2D) describing the path.
	*/
	@property Curve2D curve()
	{
		return getCurve();
	}
	/// ditto
	@property void curve(Curve2D v)
	{
		setCurve(v);
	}
}
