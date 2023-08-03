package  {
	import Aleman;
	import Frances;
	import Chino;
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.ui.Mouse;
	//MP3 reproductor
	import flash.net.URLRequest;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	
	public class Principal extends Sprite {
		
            public var miAleman: Aleman = new Aleman();
			public var miFrances: Frances = new Frances();
			public var miChino: Chino = new Chino();
			public var btnSaludo: SimpleButton;
			
			private var _personaSeleccionado: Persona = null;
			
			//Variables MP3
			private var miSonido: Sound;
			private var miCanal: SoundChannel;
			static var str: String = "";
			
		public function Principal() {
			
			btnSaludo.addEventListener(MouseEvent.CLICK, saludo);
			
			miAleman.addEventListener(MouseEvent.CLICK, SeleccionAleman);
			miFrances.addEventListener(MouseEvent.CLICK, SeleccionFrances);
			miChino.addEventListener(MouseEvent.CLICK, SeleccionChino);
			
		}
		
		private function SeleccionAleman(e: MouseEvent): void {
			
			_personaSeleccionado = miAleman;
			str = "Aleman";
			
		}
		
		private function SeleccionFrances(e: MouseEvent): void {
			
			_personaSeleccionado = miFrances;
			str = "Frances";
			
		}
		
		private function SeleccionChino(e: MouseEvent): void {
			
			_personaSeleccionado = miChino;
			str = "Chino";
			
		}
		
		private function saludo(e: MouseEvent): void {
			
			_personaSeleccionado.saludo();
			reproduce();
			
		}
		
		public function reproduce(): void {
			
			miSonido = new Sound();
			var miURL: URLRequest = new URLRequest("./"+str+".mp3");
			miSonido.load(miURL);
			miCanal = miSonido.play();
			miSonido = null;
			miCanal = null;
			
		}

	}
	
}