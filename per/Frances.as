package  {
	
	import flash.events.Event;
	
	public class Frances extends Persona {
		
		public function Frances() {
			super();
		}
		
		override public function saludo() : void {
			super.saludo();
			estado="Saludo en Frances";
			
		} 
			
	}
	
}
