package  {
	
	import flash.events.Event;
	
	public class Chino extends Persona {
		
		public function Chino() {
			super();
		} 
		
		override public function saludo() : void {
			super.saludo();
			estado="Saludo en Japones";
			
		} 
			
	}
	
}
