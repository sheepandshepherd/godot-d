/**
Enable certain nodes only when visible.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visibilityenabler;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visibilitynotifier;
/**
Enable certain nodes only when visible.

The VisibilityEnabler will disable $(D RigidBody) and $(D AnimationPlayer) nodes when they are not visible. It will only affect other nodes within the same scene as the VisibilityEnabler itself.
*/
@GodotBaseClass struct VisibilityEnabler
{
	static immutable string _GODOT_internal_name = "VisibilityEnabler";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisibilityNotifier _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisibilityEnabler other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisibilityEnabler opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisibilityEnabler _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisibilityEnabler");
		if(constructor is null) return typeof(this).init;
		return cast(VisibilityEnabler)(constructor());
	}
	/// 
	enum Enabler : int
	{
		/**
		This enabler will pause $(D AnimationPlayer) nodes.
		*/
		enablerPauseAnimations = 0,
		/**
		This enabler will freeze $(D RigidBody) nodes.
		*/
		enablerFreezeBodies = 1,
		/**
		
		*/
		enablerMax = 2,
	}
	/// 
	enum Constants : int
	{
		enablerPauseAnimations = 0,
		enablerFreezeBodies = 1,
		enablerMax = 2,
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_enabler;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_enabler") = _GODOT_set_enabler;
	/**
	
	*/
	void setEnabler(in long enabler, in bool enabled)
	{
		_GODOT_set_enabler.bind("VisibilityEnabler", "set_enabler");
		ptrcall!(void)(_GODOT_set_enabler, _godot_object, enabler, enabled);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_enabler_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_enabler_enabled") = _GODOT_is_enabler_enabled;
	/**
	
	*/
	bool isEnablerEnabled(in long enabler) const
	{
		_GODOT_is_enabler_enabled.bind("VisibilityEnabler", "is_enabler_enabled");
		return ptrcall!(bool)(_GODOT_is_enabler_enabled, _godot_object, enabler);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT__node_removed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_node_removed") = _GODOT__node_removed;
	/**
	
	*/
	void _nodeRemoved(GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_node_removed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	@property bool pauseAnimations()
	{
		return isEnablerEnabled(0);
	}
	/// ditto
	@property void pauseAnimations(bool v)
	{
		setEnabler(0, v);
	}
	/**
	
	*/
	@property bool freezeBodies()
	{
		return isEnablerEnabled(1);
	}
	/// ditto
	@property void freezeBodies(bool v)
	{
		setEnabler(1, v);
	}
}
