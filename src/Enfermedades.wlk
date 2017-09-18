import enfermos.*
import fixture1.*

class EnfermedadInfecciosa {
	var celulasInfectadas
	
	constructor (unasCelulasInfectadas){
		celulasInfectadas=unasCelulasInfectadas
	}
	
	method efecto(persona){
		persona.temperaturaActual(persona.temperaturaActual()+celulasInfectadas*0.001)
		self.duplicarCelulas()
	}
	method celulasInfectadas(){
		return celulasInfectadas}
	
	method celulasInfectadas(cantidad){
		celulasInfectadas=cantidad}
	
	method esAgresiva(persona){
		return celulasInfectadas>(persona.celulas()*0.1)
	}
	method duplicarCelulas(){
		celulasInfectadas=celulasInfectadas*2
	}

}
class EnfermedadAutoinmune{
	var celulasInfectadas
	var diasDeEfecto=0
	
	constructor(unasCelulasInfectadas){
		celulasInfectadas=unasCelulasInfectadas
	}
	method celulasInfectadas(){
		return celulasInfectadas
	}
	method efecto(persona){
		diasDeEfecto+=1
		self.matarCelulas(persona)
	}
	method matarCelulas(persona){
		persona.celulas(persona.celulas()-celulasInfectadas)
	}
	method esAgresiva(persona){
		return diasDeEfecto>30
	}
}




