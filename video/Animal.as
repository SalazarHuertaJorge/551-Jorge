package  {
	import flash.display.MovieClip;
	public class Animal extends MovieClip {
		private var _estado: String=  "";
		public function Animal() {
			// constructor code
			sentarse();
		}
		public function comer(): void{
			estado="H comiendo"; 
			trace(estado); 
		}
		public function caminando(): void{
			estado="H caminando"; 
			trace(estado); 
		}
		public function sentarse(): void{
			estado="H sentado"; 
			trace(estado); 
		}
		public function get estado(): String{return _estado;}
		public function set estado( value: String ): void{
			_estado = value; 
		}
	}
}