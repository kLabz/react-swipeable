package react.swipeable;

import js.html.Element;
import js.html.Event;

import css.Properties;
import react.ReactComponent;
import react.types.or.HandlerOrVoid;

typedef SwipeableEventData = {
	var event:Event; // MouseEvent | TouchEvent
	var initial:Array<Float>; // [x, y]
	var first:Bool;
	var deltaX:Float;
	var deltaY:Float;
	var absX:Float;
	var absY:Float;
	var velocity:Float;
	var dir:SwipeDirection;
};

@:enum abstract SwipeDirection(String) to String {
	var Left;
	var Right;
	var Up;
	var Down;
}

typedef SwipeableProps = {
	@:optional var className:String;
	@:optional var style:Properties;
	@:optional var children:ReactFragment;
	@:optional var nodeName:String;
	@:optional var innerRef:?Element->Void;

	// Configuration
	@:optional var delta:Int;
	@:optional var preventDefaultTouchmoveEvent:Bool;
	@:optional var trackMouse:Bool;
	@:optional var trackTouch:Bool;
	@:optional var rotationAngle:Float;

	// Events
	@:optional var onSwiped:HandlerOrVoid<SwipeableEventData->Void>;
	@:optional var onSwipedLeft:HandlerOrVoid<SwipeableEventData->Void>;
	@:optional var onSwipedRight:HandlerOrVoid<SwipeableEventData->Void>;
	@:optional var onSwipedUp:HandlerOrVoid<SwipeableEventData->Void>;
	@:optional var onSwipedDown:HandlerOrVoid<SwipeableEventData->Void>;
	@:optional var onSwiping:HandlerOrVoid<SwipeableEventData->Void>;
}

@:jsRequire('react-swipeable', 'Swipeable')
extern class Swipeable extends ReactComponentOfProps<SwipeableProps> {}
