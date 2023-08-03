package  {
	import Perro;
	import Persona;
	import Serpiente;
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.events.Event;
	
	import flash.net.URLRequest;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	
	
	public class Principal extends Sprite {
		
            public var miperro: Perro =new Perro();
		    public var mipersona: Persona=new Persona();
		    public var miserpiente: Serpiente=new Serpiente();



			public var btnCaminando: SimpleButton;
			public var btnSentado: SimpleButton;
			public var btnComiendo: SimpleButton;
			
			private var _animalSeleccionado:Animal=null;
			
			private var miSonido: Sound;
			private var miCanal: SoundChannel;
			static var str: String="";
			
			
			
			
		public function Principal() {
			
			btnCaminando.addEventListener(MouseEvent.CLICK, camina);
			btnSentado.addEventListener(MouseEvent.CLICK, sentado);
			btnComiendo.addEventListener(MouseEvent.CLICK, come);
			
			miperro.addEventListener(MouseEvent.CLICK, seleccionPerro);
			mipersona.addEventListener(MouseEvent.CLICK, seleccionPersona);
			miserpiente.addEventListener(MouseEvent.CLICK, seleccionSerpiente);
		}
		private function seleccionPerro(e:MouseEvent): void{
			_animalSeleccionado = miperro;
			//str="perro";
			
			}
			private function seleccionPersona(e:MouseEvent): void{
			_animalSeleccionado = mipersona;
			//str="persona"
			}
			private function seleccionSerpiente(e:MouseEvent): void{
			_animalSeleccionado = miserpiente; 
			}
	
		
		private function camina(e: MouseEvent): void {
			_animalSeleccionado.caminando();
			//reproduce();
			
		}
        private function sentado(e: MouseEvent): void {
			_animalSeleccionado.sentarse();
       }
	    private function come(e: MouseEvent): void {
			_animalSeleccionado.comer();

		}
		//public function reproduce(): void{
			//miSonido=new Sound();
			//var miURL : URLRequest =new URLRequest("./"+str+".mp3");
			//miSonido.load(miURL);
			//miCanal = miSonido.play();
			//miSonido=null;
			//miCanal=null;
		//}
			
	}
	
}
