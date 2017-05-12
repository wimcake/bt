package bt.composites;

/**
 * ...
 * @author https://github.com/wimcake
 */
class Random<T:Blackboard> extends Composite<T> {


	public function new(children:Array<Behavior<T>>) super(children);


	override public function update(context:T, dt:Float):Status {
		var i = context.isOpened(id) ? Std.random(count) : context.getContinue(id);

		var status = children[i].exec(context, dt);

		if (status == Running) context.setContinue(id, i);

		return status;
	}

}