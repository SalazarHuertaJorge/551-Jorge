package  {
	import flash.display.MovieClip;
	public class Persona extends MovieClip {
		private var _estado: String=  "";
		public function Persona() {
			saludo();
		}
		public function saludo(): void{
			estado="Persona Saludando";
		}
		public function get estado(): String{
			return _estado;
		}
		public function set estado( value: String ): void{
			_estado = value; 
		}
	}
}