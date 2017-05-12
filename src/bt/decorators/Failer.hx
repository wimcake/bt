package bt.decorators;

/**
 * ...
 * @author https://github.com/wimcake
 */
class Failer<T:Blackboard> extends Decorator<T> {


	public function new(child:Behavior<T>) super(child);


	override public function update(context:T, dt:Float):Status {
		child.execute(context, dt);
		return Failure;
	}

}