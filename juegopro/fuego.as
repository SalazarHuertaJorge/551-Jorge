package  {
import flash.display.MovieClip;
import flash.events.Event;

	public class fuego extends MovieClip {
		private var vel: Number=5;

		public function fuego(posX, posY) {
			// constructor code
			x = posX + 80;
			y = posY + 80;
			scaleX= .6;
			scaleY=.6;
			this.addEventListener(Event.ENTER_FRAME, mover);
			
		}
		public function mover (e:Event){
			y +=  vel;
			if(y>=380){
				vel=0;
				
				this.removeEventListener(Event.ENTER_FRAME, mover);
				stage.removeChild(this);
				
				
			}
			if(this.hitTestObject(setup.thor_new.clip_mc)){
				//trace("colision");
				vel=0;
				this.removeEventListener(Event.ENTER_FRAME,mover);
				stage.removeChild(this);
				setup.puntos+=1;
			}
		}

	}
	
}
