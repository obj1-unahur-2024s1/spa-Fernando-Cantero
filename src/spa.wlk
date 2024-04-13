import personasspa.*

object spa {
	method atender(persona){
		if (persona.soloMasaje()){
			persona.masaje()
		}
		else {
			persona.masaje()
		    persona.banoVapor()
		}
	}
}
