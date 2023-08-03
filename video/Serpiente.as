package  {
	import flash.events.Event;
	
	
	public class Serpiente extends Animal{

		public function Serpiente() {
			super();
			
		}
		override public function comer (): void{
			super.comer();
			this.gotoAndStop(2);
			trace("Serpiente comiendo");
		}
		override public function sentarse (): void{
			super.sentarse();
			this.gotoAndStop(1);
			trace("Serpiente sentado");

		}
		override public function caminando (): void{
			super.caminando();
			this.gotoAndStop(3);
			trace("Serpiente caminando");
		}

	}
	
}
