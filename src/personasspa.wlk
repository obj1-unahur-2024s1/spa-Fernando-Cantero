import spa.*

object olivia {
	var concentracion = 6
	method masaje(){
		concentracion += 3
	}
	method discute(){
		concentracion -= 1
	}
	method gradoDeConcentracion() = concentracion
    method soloMasaje()= true
}

object bruno {
	var feliz = true
	var sed = false
	var peso = 55000
	method masaje(){
		feliz = true
	}
	method banoVapor(){
		peso -= 500
		sed = true
	}
	method estaPerfecto(){
		var salida = false
		if (feliz and !sed and peso.between(50000, 70000)){
			salida = true
		}
		return salida
	}
	method tomarAgua() {
		sed = false
	}
	method comerFideos() {
		peso += 250
		sed = true
	}
	method correr(){
		peso -= 300
	}
	method noticiero(){
		feliz = false
	}
	method medioDiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.noticiero()
	}
	method soloMasaje()=false
}

object ramiro {
	var contractura = 0
	var pielGrasosa = false
	method vajarContractura(nro){
		0.max(contractura - nro)
	}
	method masaje(){
		self.vajarContractura(2)
	}
	method banoVapor(){
		pielGrasosa = false
	}
	method comerBigMac(){
		pielGrasosa = true
	}
	method vajarALaFosa(){
		pielGrasosa = true
		contractura += 1
	}
	method jugarPaddle(){
		contractura += 3
	}
	method diaDeTrabajo() {
		self.vajarALaFosa()
		self.comerBigMac()
		self.vajarALaFosa()
	}
	method nivelContractura()= contractura
	method estadoPiel() = pielGrasosa
	method soloMasaje()= false
}