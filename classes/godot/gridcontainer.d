/**
Grid container used to arrange elements in a grid like layout

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.gridcontainer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.container;
/**
Grid container used to arrange elements in a grid like layout

Grid container will arrange its children in a grid like structure, the grid columns are specified using the $(D setColumns) method and the number of rows will be equal to the number of children in the container divided by the number of columns, for example: if the container has 5 children, and 2 columns, there will be 3 rows in the container. Notice that grid layout will preserve the columns and rows for every size of the container.
*/
@GodotBaseClass struct GridContainer
{
	static immutable string _GODOT_internal_name = "GridContainer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Container _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in GridContainer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GridContainer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GridContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GridContainer");
		if(constructor is null) return typeof(this).init;
		return cast(GridContainer)(constructor());
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_columns;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_columns") = _GODOT_set_columns;
	/**
	
	*/
	void setColumns(in long columns)
	{
		_GODOT_set_columns.bind("GridContainer", "set_columns");
		ptrcall!(void)(_GODOT_set_columns, _godot_object, columns);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_columns;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_columns") = _GODOT_get_columns;
	/**
	
	*/
	long getColumns() const
	{
		_GODOT_get_columns.bind("GridContainer", "get_columns");
		return ptrcall!(long)(_GODOT_get_columns, _godot_object);
	}
	/**
	The number of columns in the `GridContainer`. If modified, `GridContainer` reorders its children to accommodate the new layout.
	*/
	@property long columns()
	{
		return getColumns();
	}
	/// ditto
	@property void columns(long v)
	{
		setColumns(v);
	}
}
