package  {
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	
	public class hulk extends MovieClip{
		private var vel: Number = 5;
		private var dir: Number = 1;
		private var limite_der: int = 520;
		private var limite_izq: int = 30;
		private var t_cambia: Timer = new Timer(200,0);
		private var cadaCuanto: Number;
		private var t_lanzar: Timer= new Timer(2000,0);

		public function hulk() {
			// constructor code
			
			addEventListener(Event.ENTER_FRAME, actualiza);
			t_cambia.addEventListener(TimerEvent.TIMER, cambia_dir);
			t_cambia.start();
			t_lanzar.addEventListener(TimerEvent.TIMER, lanzar_fuego);
			t_lanzar.start();
			
		}
		public function lanzar_fuego(e:TimerEvent){
			var fuego_new=new fuego(x, y);
			stage.addChild(fuego_new);
			
		}
		
		
		
		public function actualiza(e: Event){
			x+=vel*dir;
			if(x>=limite_der){
				dir=-1;
			}
			if(x<= limite_izq){
				dir=1;
				
			}
		}
		public function cambia_dir(e: TimerEvent){
			cadaCuanto= Math.floor(Math.random()*5);
			switch (cadaCuanto){
				case 1:
				dir=1;
				break
				case 2:
				dir=-1;
				break
			}
		}

	}
	
}
