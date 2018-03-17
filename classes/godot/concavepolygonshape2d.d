/**
Concave polygon 2D shape resource for physics.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.concavepolygonshape2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.shape2d;
/**
Concave polygon 2D shape resource for physics.

It is made out of segments and is very optimal for complex polygonal concave collisions. It is really not advised to use for $(D RigidBody2D) nodes. A CollisionPolygon2D in convex decomposition mode (solids) or several convex objects are advised for that instead. Otherwise, a concave polygon 2D shape is better for static collisions.
The main difference between a $(D ConvexPolygonShape2D) and a `ConcavePolygonShape2D` is that a concave polygon assumes it is concave and uses a more complex method of collision detection, and a convex one forces itself to be convex in order to speed up collision detection.
*/
@GodotBaseClass struct ConcavePolygonShape2D
{
	static immutable string _GODOT_internal_name = "ConcavePolygonShape2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Shape2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ConcavePolygonShape2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ConcavePolygonShape2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ConcavePolygonShape2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ConcavePolygonShape2D");
		if(constructor is null) return typeof(this).init;
		return cast(ConcavePolygonShape2D)(constructor());
	}
	package(godot) static GodotMethod!(void, PoolVector2Array) _GODOT_set_segments;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_segments") = _GODOT_set_segments;
	/**
	
	*/
	void setSegments(in PoolVector2Array segments)
	{
		_GODOT_set_segments.bind("ConcavePolygonShape2D", "set_segments");
		ptrcall!(void)(_GODOT_set_segments, _godot_object, segments);
	}
	package(godot) static GodotMethod!(PoolVector2Array) _GODOT_get_segments;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_segments") = _GODOT_get_segments;
	/**
	
	*/
	PoolVector2Array getSegments() const
	{
		_GODOT_get_segments.bind("ConcavePolygonShape2D", "get_segments");
		return ptrcall!(PoolVector2Array)(_GODOT_get_segments, _godot_object);
	}
	/**
	The array of points that make up the `ConcavePolygonShape2D`'s line segments.
	*/
	@property PoolVector2Array segments()
	{
		return getSegments();
	}
	/// ditto
	@property void segments(PoolVector2Array v)
	{
		setSegments(v);
	}
}
