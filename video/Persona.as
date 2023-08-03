package  {
	import flash.events.Event;
	
	
	public class Persona extends Animal{

		public function Persona() {
			super();
			
		}
		override public function comer (): void{
			super.comer();
			this.gotoAndStop(2);
			trace("Persona comiendo");
		}
		override public function sentarse (): void{
			super.sentarse();
			this.gotoAndStop(1);
			trace("Persona sentado");

		}
		override public function caminando (): void{
			super.caminando();
			this.gotoAndStop(3);
			trace("Persona caminando");
		}

	}
	
}
