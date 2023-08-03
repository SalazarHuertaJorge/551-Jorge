package  {
	
	import flash.events.Event;
	
	public class Aleman extends Persona{
		
		public function Aleman() {
			super();
		}  
		
		override public function saludo() : void {
			super.saludo();
			estado="Saludo en Aleman";
			
		} 
			
	}
	
}
