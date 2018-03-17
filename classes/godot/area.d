/**
General purpose area node for detection and 3D physics influence.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.area;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.collisionobject;
/**
General purpose area node for detection and 3D physics influence.

3D area that detects $(D CollisionObject) nodes overlapping, entering, or exiting. Can also alter or override local physics parameters (gravity, damping).
*/
@GodotBaseClass struct Area
{
	static immutable string _GODOT_internal_name = "Area";
public:
@nogc nothrow:
	union { godot_object _godot_object; CollisionObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Area other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Area opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Area _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Area");
		if(constructor is null) return typeof(this).init;
		return cast(Area)(constructor());
	}
	/// 
	enum SpaceOverride : int
	{
		/**
		This area does not affect gravity/damping.
		*/
		spaceOverrideDisabled = 0,
		/**
		This area adds its gravity/damping values to whatever has been calculated so far (in `priority` order).
		*/
		spaceOverrideCombine = 1,
		/**
		This area adds its gravity/damping values to whatever has been calculated so far (in `priority` order), ignoring any lower priority areas.
		*/
		spaceOverrideCombineReplace = 2,
		/**
		This area replaces any gravity/damping, even the defaults, ignoring any lower priority areas.
		*/
		spaceOverrideReplace = 3,
		/**
		This area replaces any gravity/damping calculated so far (in `priority` order), but keeps calculating the rest of the areas.
		*/
		spaceOverrideReplaceCombine = 4,
	}
	/// 
	enum Constants : int
	{
		spaceOverrideDisabled = 0,
		spaceOverrideCombine = 1,
		spaceOverrideCombineReplace = 2,
		spaceOverrideReplace = 3,
		spaceOverrideReplaceCombine = 4,
	}
	package(godot) static GodotMethod!(void, long) _GODOT__body_enter_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "_body_enter_tree") = _GODOT__body_enter_tree;
	/**
	
	*/
	void _bodyEnterTree(in long id)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(id);
		String _GODOT_method_name = String("_body_enter_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__body_exit_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "_body_exit_tree") = _GODOT__body_exit_tree;
	/**
	
	*/
	void _bodyExitTree(in long id)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(id);
		String _GODOT_method_name = String("_body_exit_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__area_enter_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "_area_enter_tree") = _GODOT__area_enter_tree;
	/**
	
	*/
	void _areaEnterTree(in long id)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(id);
		String _GODOT_method_name = String("_area_enter_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__area_exit_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "_area_exit_tree") = _GODOT__area_exit_tree;
	/**
	
	*/
	void _areaExitTree(in long id)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(id);
		String _GODOT_method_name = String("_area_exit_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_space_override_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_space_override_mode") = _GODOT_set_space_override_mode;
	/**
	
	*/
	void setSpaceOverrideMode(in long enable)
	{
		_GODOT_set_space_override_mode.bind("Area", "set_space_override_mode");
		ptrcall!(void)(_GODOT_set_space_override_mode, _godot_object, enable);
	}
	package(godot) static GodotMethod!(Area.SpaceOverride) _GODOT_get_space_override_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_space_override_mode") = _GODOT_get_space_override_mode;
	/**
	
	*/
	Area.SpaceOverride getSpaceOverrideMode() const
	{
		_GODOT_get_space_override_mode.bind("Area", "get_space_override_mode");
		return ptrcall!(Area.SpaceOverride)(_GODOT_get_space_override_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_gravity_is_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_gravity_is_point") = _GODOT_set_gravity_is_point;
	/**
	
	*/
	void setGravityIsPoint(in bool enable)
	{
		_GODOT_set_gravity_is_point.bind("Area", "set_gravity_is_point");
		ptrcall!(void)(_GODOT_set_gravity_is_point, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_gravity_a_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_gravity_a_point") = _GODOT_is_gravity_a_point;
	/**
	
	*/
	bool isGravityAPoint() const
	{
		_GODOT_is_gravity_a_point.bind("Area", "is_gravity_a_point");
		return ptrcall!(bool)(_GODOT_is_gravity_a_point, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_gravity_distance_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_gravity_distance_scale") = _GODOT_set_gravity_distance_scale;
	/**
	
	*/
	void setGravityDistanceScale(in double distance_scale)
	{
		_GODOT_set_gravity_distance_scale.bind("Area", "set_gravity_distance_scale");
		ptrcall!(void)(_GODOT_set_gravity_distance_scale, _godot_object, distance_scale);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_gravity_distance_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gravity_distance_scale") = _GODOT_get_gravity_distance_scale;
	/**
	
	*/
	double getGravityDistanceScale() const
	{
		_GODOT_get_gravity_distance_scale.bind("Area", "get_gravity_distance_scale");
		return ptrcall!(double)(_GODOT_get_gravity_distance_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_gravity_vector;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_gravity_vector") = _GODOT_set_gravity_vector;
	/**
	
	*/
	void setGravityVector(in Vector3 vector)
	{
		_GODOT_set_gravity_vector.bind("Area", "set_gravity_vector");
		ptrcall!(void)(_GODOT_set_gravity_vector, _godot_object, vector);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_gravity_vector;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gravity_vector") = _GODOT_get_gravity_vector;
	/**
	
	*/
	Vector3 getGravityVector() const
	{
		_GODOT_get_gravity_vector.bind("Area", "get_gravity_vector");
		return ptrcall!(Vector3)(_GODOT_get_gravity_vector, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_gravity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_gravity") = _GODOT_set_gravity;
	/**
	
	*/
	void setGravity(in double gravity)
	{
		_GODOT_set_gravity.bind("Area", "set_gravity");
		ptrcall!(void)(_GODOT_set_gravity, _godot_object, gravity);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_gravity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gravity") = _GODOT_get_gravity;
	/**
	
	*/
	double getGravity() const
	{
		_GODOT_get_gravity.bind("Area", "get_gravity");
		return ptrcall!(double)(_GODOT_get_gravity, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_angular_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_angular_damp") = _GODOT_set_angular_damp;
	/**
	
	*/
	void setAngularDamp(in double angular_damp)
	{
		_GODOT_set_angular_damp.bind("Area", "set_angular_damp");
		ptrcall!(void)(_GODOT_set_angular_damp, _godot_object, angular_damp);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_angular_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_angular_damp") = _GODOT_get_angular_damp;
	/**
	
	*/
	double getAngularDamp() const
	{
		_GODOT_get_angular_damp.bind("Area", "get_angular_damp");
		return ptrcall!(double)(_GODOT_get_angular_damp, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_linear_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_linear_damp") = _GODOT_set_linear_damp;
	/**
	
	*/
	void setLinearDamp(in double linear_damp)
	{
		_GODOT_set_linear_damp.bind("Area", "set_linear_damp");
		ptrcall!(void)(_GODOT_set_linear_damp, _godot_object, linear_damp);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_linear_damp;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_linear_damp") = _GODOT_get_linear_damp;
	/**
	
	*/
	double getLinearDamp() const
	{
		_GODOT_get_linear_damp.bind("Area", "get_linear_damp");
		return ptrcall!(double)(_GODOT_get_linear_damp, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_priority;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_priority") = _GODOT_set_priority;
	/**
	
	*/
	void setPriority(in double priority)
	{
		_GODOT_set_priority.bind("Area", "set_priority");
		ptrcall!(void)(_GODOT_set_priority, _godot_object, priority);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_priority;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_priority") = _GODOT_get_priority;
	/**
	
	*/
	double getPriority() const
	{
		_GODOT_get_priority.bind("Area", "get_priority");
		return ptrcall!(double)(_GODOT_get_priority, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_mask") = _GODOT_set_collision_mask;
	/**
	
	*/
	void setCollisionMask(in long collision_mask)
	{
		_GODOT_set_collision_mask.bind("Area", "set_collision_mask");
		ptrcall!(void)(_GODOT_set_collision_mask, _godot_object, collision_mask);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_collision_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_mask") = _GODOT_get_collision_mask;
	/**
	
	*/
	long getCollisionMask() const
	{
		_GODOT_get_collision_mask.bind("Area", "get_collision_mask");
		return ptrcall!(long)(_GODOT_get_collision_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_layer") = _GODOT_set_collision_layer;
	/**
	
	*/
	void setCollisionLayer(in long collision_layer)
	{
		_GODOT_set_collision_layer.bind("Area", "set_collision_layer");
		ptrcall!(void)(_GODOT_set_collision_layer, _godot_object, collision_layer);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_collision_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_layer") = _GODOT_get_collision_layer;
	/**
	
	*/
	long getCollisionLayer() const
	{
		_GODOT_get_collision_layer.bind("Area", "get_collision_layer");
		return ptrcall!(long)(_GODOT_get_collision_layer, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_collision_mask_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_mask_bit") = _GODOT_set_collision_mask_bit;
	/**
	Set/clear individual bits on the collision mask. This simplifies editing which `Area` layers this `Area` scans.
	*/
	void setCollisionMaskBit(in long bit, in bool value)
	{
		_GODOT_set_collision_mask_bit.bind("Area", "set_collision_mask_bit");
		ptrcall!(void)(_GODOT_set_collision_mask_bit, _godot_object, bit, value);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_get_collision_mask_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_mask_bit") = _GODOT_get_collision_mask_bit;
	/**
	Returns an individual bit on the collision mask.
	*/
	bool getCollisionMaskBit(in long bit) const
	{
		_GODOT_get_collision_mask_bit.bind("Area", "get_collision_mask_bit");
		return ptrcall!(bool)(_GODOT_get_collision_mask_bit, _godot_object, bit);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_collision_layer_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collision_layer_bit") = _GODOT_set_collision_layer_bit;
	/**
	Set/clear individual bits on the layer mask. This simplifies editing this $(D code)Area$(D code)'s layers.
	*/
	void setCollisionLayerBit(in long bit, in bool value)
	{
		_GODOT_set_collision_layer_bit.bind("Area", "set_collision_layer_bit");
		ptrcall!(void)(_GODOT_set_collision_layer_bit, _godot_object, bit, value);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_get_collision_layer_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_collision_layer_bit") = _GODOT_get_collision_layer_bit;
	/**
	Returns an individual bit on the layer mask.
	*/
	bool getCollisionLayerBit(in long bit) const
	{
		_GODOT_get_collision_layer_bit.bind("Area", "get_collision_layer_bit");
		return ptrcall!(bool)(_GODOT_get_collision_layer_bit, _godot_object, bit);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_monitorable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_monitorable") = _GODOT_set_monitorable;
	/**
	
	*/
	void setMonitorable(in bool enable)
	{
		_GODOT_set_monitorable.bind("Area", "set_monitorable");
		ptrcall!(void)(_GODOT_set_monitorable, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_monitorable;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_monitorable") = _GODOT_is_monitorable;
	/**
	
	*/
	bool isMonitorable() const
	{
		_GODOT_is_monitorable.bind("Area", "is_monitorable");
		return ptrcall!(bool)(_GODOT_is_monitorable, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_monitoring;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_monitoring") = _GODOT_set_monitoring;
	/**
	
	*/
	void setMonitoring(in bool enable)
	{
		_GODOT_set_monitoring.bind("Area", "set_monitoring");
		ptrcall!(void)(_GODOT_set_monitoring, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_monitoring;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_monitoring") = _GODOT_is_monitoring;
	/**
	
	*/
	bool isMonitoring() const
	{
		_GODOT_is_monitoring.bind("Area", "is_monitoring");
		return ptrcall!(bool)(_GODOT_is_monitoring, _godot_object);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_overlapping_bodies;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_overlapping_bodies") = _GODOT_get_overlapping_bodies;
	/**
	Returns a list of intersecting $(D PhysicsBody)s. For performance reasons (collisions are all processed at the same time) this list is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.
	*/
	Array getOverlappingBodies() const
	{
		_GODOT_get_overlapping_bodies.bind("Area", "get_overlapping_bodies");
		return ptrcall!(Array)(_GODOT_get_overlapping_bodies, _godot_object);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_overlapping_areas;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_overlapping_areas") = _GODOT_get_overlapping_areas;
	/**
	Returns a list of intersecting `Area`s. For performance reasons (collisions are all processed at the same time) this list is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.
	*/
	Array getOverlappingAreas() const
	{
		_GODOT_get_overlapping_areas.bind("Area", "get_overlapping_areas");
		return ptrcall!(Array)(_GODOT_get_overlapping_areas, _godot_object);
	}
	package(godot) static GodotMethod!(bool, GodotObject) _GODOT_overlaps_body;
	package(godot) alias _GODOT_methodBindInfo(string name : "overlaps_body") = _GODOT_overlaps_body;
	/**
	If `true` the given body overlaps the Area. Note that the result of this test is not immediate after moving objects. For performance, list of overlaps is updated once per frame and before the physics step. Consider using signals instead.
	*/
	bool overlapsBody(GodotObject _body) const
	{
		_GODOT_overlaps_body.bind("Area", "overlaps_body");
		return ptrcall!(bool)(_GODOT_overlaps_body, _godot_object, _body);
	}
	package(godot) static GodotMethod!(bool, GodotObject) _GODOT_overlaps_area;
	package(godot) alias _GODOT_methodBindInfo(string name : "overlaps_area") = _GODOT_overlaps_area;
	/**
	If `true` the given area overlaps the Area. Note that the result of this test is not immediate after moving objects. For performance, list of overlaps is updated once per frame and before the physics step. Consider using signals instead.
	*/
	bool overlapsArea(GodotObject area) const
	{
		_GODOT_overlaps_area.bind("Area", "overlaps_area");
		return ptrcall!(bool)(_GODOT_overlaps_area, _godot_object, area);
	}
	package(godot) static GodotMethod!(void, long, RID, long, long, long) _GODOT__body_inout;
	package(godot) alias _GODOT_methodBindInfo(string name : "_body_inout") = _GODOT__body_inout;
	/**
	
	*/
	void _bodyInout(in long arg0, in RID arg1, in long arg2, in long arg3, in long arg4)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		_GODOT_args.append(arg3);
		_GODOT_args.append(arg4);
		String _GODOT_method_name = String("_body_inout");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long, RID, long, long, long) _GODOT__area_inout;
	package(godot) alias _GODOT_methodBindInfo(string name : "_area_inout") = _GODOT__area_inout;
	/**
	
	*/
	void _areaInout(in long arg0, in RID arg1, in long arg2, in long arg3, in long arg4)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		_GODOT_args.append(arg3);
		_GODOT_args.append(arg4);
		String _GODOT_method_name = String("_area_inout");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_audio_bus_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_audio_bus_override") = _GODOT_set_audio_bus_override;
	/**
	
	*/
	void setAudioBusOverride(in bool enable)
	{
		_GODOT_set_audio_bus_override.bind("Area", "set_audio_bus_override");
		ptrcall!(void)(_GODOT_set_audio_bus_override, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_overriding_audio_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_overriding_audio_bus") = _GODOT_is_overriding_audio_bus;
	/**
	
	*/
	bool isOverridingAudioBus() const
	{
		_GODOT_is_overriding_audio_bus.bind("Area", "is_overriding_audio_bus");
		return ptrcall!(bool)(_GODOT_is_overriding_audio_bus, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_audio_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_audio_bus") = _GODOT_set_audio_bus;
	/**
	
	*/
	void setAudioBus(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_audio_bus.bind("Area", "set_audio_bus");
		ptrcall!(void)(_GODOT_set_audio_bus, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_audio_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_audio_bus") = _GODOT_get_audio_bus;
	/**
	
	*/
	String getAudioBus() const
	{
		_GODOT_get_audio_bus.bind("Area", "get_audio_bus");
		return ptrcall!(String)(_GODOT_get_audio_bus, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_reverb_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_reverb_bus") = _GODOT_set_use_reverb_bus;
	/**
	
	*/
	void setUseReverbBus(in bool enable)
	{
		_GODOT_set_use_reverb_bus.bind("Area", "set_use_reverb_bus");
		ptrcall!(void)(_GODOT_set_use_reverb_bus, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_using_reverb_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_using_reverb_bus") = _GODOT_is_using_reverb_bus;
	/**
	
	*/
	bool isUsingReverbBus() const
	{
		_GODOT_is_using_reverb_bus.bind("Area", "is_using_reverb_bus");
		return ptrcall!(bool)(_GODOT_is_using_reverb_bus, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_reverb_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_reverb_bus") = _GODOT_set_reverb_bus;
	/**
	
	*/
	void setReverbBus(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_reverb_bus.bind("Area", "set_reverb_bus");
		ptrcall!(void)(_GODOT_set_reverb_bus, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_reverb_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_reverb_bus") = _GODOT_get_reverb_bus;
	/**
	
	*/
	String getReverbBus() const
	{
		_GODOT_get_reverb_bus.bind("Area", "get_reverb_bus");
		return ptrcall!(String)(_GODOT_get_reverb_bus, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_reverb_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_reverb_amount") = _GODOT_set_reverb_amount;
	/**
	
	*/
	void setReverbAmount(in double amount)
	{
		_GODOT_set_reverb_amount.bind("Area", "set_reverb_amount");
		ptrcall!(void)(_GODOT_set_reverb_amount, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_reverb_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_reverb_amount") = _GODOT_get_reverb_amount;
	/**
	
	*/
	double getReverbAmount() const
	{
		_GODOT_get_reverb_amount.bind("Area", "get_reverb_amount");
		return ptrcall!(double)(_GODOT_get_reverb_amount, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_reverb_uniformity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_reverb_uniformity") = _GODOT_set_reverb_uniformity;
	/**
	
	*/
	void setReverbUniformity(in double amount)
	{
		_GODOT_set_reverb_uniformity.bind("Area", "set_reverb_uniformity");
		ptrcall!(void)(_GODOT_set_reverb_uniformity, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_reverb_uniformity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_reverb_uniformity") = _GODOT_get_reverb_uniformity;
	/**
	
	*/
	double getReverbUniformity() const
	{
		_GODOT_get_reverb_uniformity.bind("Area", "get_reverb_uniformity");
		return ptrcall!(double)(_GODOT_get_reverb_uniformity, _godot_object);
	}
	/**
	Override mode for gravity and damping calculations within this area. See the SPACE_OVERRIDE_* constants for values.
	*/
	@property Area.SpaceOverride spaceOverride()
	{
		return getSpaceOverrideMode();
	}
	/// ditto
	@property void spaceOverride(long v)
	{
		setSpaceOverrideMode(v);
	}
	/**
	If `true` gravity is calculated from a point (set via `gravity_vec`). Also see `space_override`. Default value: `false`.
	*/
	@property bool gravityPoint()
	{
		return isGravityAPoint();
	}
	/// ditto
	@property void gravityPoint(bool v)
	{
		setGravityIsPoint(v);
	}
	/**
	The falloff factor for point gravity. The greater the value, the faster gravity decreases with distance.
	*/
	@property double gravityDistanceScale()
	{
		return getGravityDistanceScale();
	}
	/// ditto
	@property void gravityDistanceScale(double v)
	{
		setGravityDistanceScale(v);
	}
	/**
	The area's gravity vector (not normalized). If gravity is a point (see $(D isGravityAPoint)), this will be the point of attraction.
	*/
	@property Vector3 gravityVec()
	{
		return getGravityVector();
	}
	/// ditto
	@property void gravityVec(Vector3 v)
	{
		setGravityVector(v);
	}
	/**
	The area's gravity intensity (ranges from -1024 to 1024). This value multiplies the gravity vector. This is useful to alter the force of gravity without altering its direction.
	*/
	@property double gravity()
	{
		return getGravity();
	}
	/// ditto
	@property void gravity(double v)
	{
		setGravity(v);
	}
	/**
	The rate at which objects stop moving in this area. Represents the linear velocity lost per second. Values range from `0` (no damping) to `1` (full damping).
	*/
	@property double linearDamp()
	{
		return getLinearDamp();
	}
	/// ditto
	@property void linearDamp(double v)
	{
		setLinearDamp(v);
	}
	/**
	The rate at which objects stop spinning in this area. Represents the angular velocity lost per second. Values range from `0` (no damping) to `1` (full damping).
	*/
	@property double angularDamp()
	{
		return getAngularDamp();
	}
	/// ditto
	@property void angularDamp(double v)
	{
		setAngularDamp(v);
	}
	/**
	The area's priority. Higher priority areas are processed first. Default value: 0.
	*/
	@property double priority()
	{
		return getPriority();
	}
	/// ditto
	@property void priority(double v)
	{
		setPriority(v);
	}
	/**
	If `true` the area detects bodies or areas entering and exiting it. Default value: `true`.
	*/
	@property bool monitoring()
	{
		return isMonitoring();
	}
	/// ditto
	@property void monitoring(bool v)
	{
		setMonitoring(v);
	}
	/**
	If `true` other monitoring areas can detect this area. Default value: `true`.
	*/
	@property bool monitorable()
	{
		return isMonitorable();
	}
	/// ditto
	@property void monitorable(bool v)
	{
		setMonitorable(v);
	}
	/**
	The area's physics layer(s). Collidable objects can exist in any of 32 different layers. A contact is detected if object A is in any of the layers that object B scans, or object B is in any layers that object A scans. See also `collision_mask`.
	*/
	@property long collisionLayer()
	{
		return getCollisionLayer();
	}
	/// ditto
	@property void collisionLayer(long v)
	{
		setCollisionLayer(v);
	}
	/**
	The physics layers this area scans to determine collision detection.
	*/
	@property long collisionMask()
	{
		return getCollisionMask();
	}
	/// ditto
	@property void collisionMask(long v)
	{
		setCollisionMask(v);
	}
	/**
	If `true` the area's audio bus overrides the default audio bus. Default value: `false`.
	*/
	@property bool audioBusOverride()
	{
		return isOverridingAudioBus();
	}
	/// ditto
	@property void audioBusOverride(bool v)
	{
		setAudioBusOverride(v);
	}
	/**
	The name of the area's audio bus.
	*/
	@property String audioBusName()
	{
		return getAudioBus();
	}
	/// ditto
	@property void audioBusName(String v)
	{
		setAudioBus(v);
	}
	/**
	If `true` the area applies reverb to its associated audio.
	*/
	@property bool reverbBusEnable()
	{
		return isUsingReverbBus();
	}
	/// ditto
	@property void reverbBusEnable(bool v)
	{
		setUseReverbBus(v);
	}
	/**
	The reverb bus name to use for this area's associated audio.
	*/
	@property String reverbBusName()
	{
		return getReverbBus();
	}
	/// ditto
	@property void reverbBusName(String v)
	{
		setReverbBus(v);
	}
	/**
	The degree to which this area applies reverb to its associated audio. Ranges from `0` to `1` with `0.1` precision.
	*/
	@property double reverbBusAmount()
	{
		return getReverbAmount();
	}
	/// ditto
	@property void reverbBusAmount(double v)
	{
		setReverbAmount(v);
	}
	/**
	The degree to which this area's reverb is a uniform effect. Ranges from `0` to `1` with `0.1` precision.
	*/
	@property double reverbBusUniformity()
	{
		return getReverbUniformity();
	}
	/// ditto
	@property void reverbBusUniformity(double v)
	{
		setReverbUniformity(v);
	}
}
