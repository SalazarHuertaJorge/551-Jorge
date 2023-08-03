package  {
	import flash.events.Event;
	
	
	public class Perro extends Animal{

		public function Perro() {
			super();
			
		}
		override public function comer (): void{
			super.comer();
			this.gotoAndStop(2);
			trace("perro comiendo");
		}
		override public function sentarse (): void{
			super.sentarse();
			this.gotoAndStop(1);
			trace("perro sentado");

		}
		override public function caminando (): void{
			super.caminando();
			this.gotoAndStop(3);
			trace("perro caminando");
		}

	}
	
}
