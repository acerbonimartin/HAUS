import Enfermedades.*
import fixture1.*

object logan {
	var temperaturaActual=36
	var enfermedades=#{}
	var celulas=3000000
	method celulas(){
		return celulas
	}
	method celulas(cantidad){
		celulas= 0.max(cantidad)
	}
	method agregarEnfermedad(enfermedad){
		enfermedades.add(enfermedad)
	}
	method agregarEnfermedades(enfermedadesNuevas){
		enfermedades.addAll(enfermedadesNuevas)
	}
	method temperaturaOriginal(){
		return 36
	}
	method temperaturaActual(unaCantidad){
		temperaturaActual=45.min(unaCantidad)
	}
	method temperaturaActual(){
		return temperaturaActual
	}
	method pasaUnDia(){
		enfermedades.forEach{enfermedad=>enfermedad.efecto(self)}
	}
	method enfermedadQueMasAfecta(){
		return enfermedades.find{enfermedad=>enfermedad.celulasInfectadas()==self.cantidadMasInfectada()}
	}
	method cantidadMasInfectada(){
		return enfermedades.map{enfermedad=>enfermedad.celulasInfectadas()}.max()
	}
	method enfermedadesAgresivas(){
		return enfermedades.filter{enfermedad=>enfermedad.esAgresiva(self)}
	}
	method celulasInfectadasAgresivamente(){
		return (self.enfermedadesAgresivas()).map{enfermedad=>enfermedad.celulasInfectadas()}.sum()
	}
}
object frank{

	var temperaturaActual=36
	var enfermedades=#{}
	var celulas=3500000
	method celulas(){
		return celulas
	}
	method celulas(cantidad){
		celulas= 0.max(cantidad)
	}
	method agregarEnfermedad(enfermedad){
		enfermedades.add(enfermedad)
	}
	method agregarEnfermedades(enfermedadesNuevas){
		enfermedades.addAll(enfermedadesNuevas)
	}
	method temperaturaOriginal(){
		return 36
	}
	method temperaturaActual(unaCantidad){
		temperaturaActual=45.min(unaCantidad)
	}
	method temperaturaActual(){
		return temperaturaActual
	}
	method pasaUnDia(){
		enfermedades.forEach{enfermedad=>enfermedad.efecto(self)}
	}
	method enfermedadQueMasAfecta(){
		return enfermedades.find{enfermedad=>enfermedad.celulasInfectadas()==self.cantidadMasInfectada()}
	}
	method cantidadMasInfectada(){
		return enfermedades.map{enfermedad=>enfermedad.celulasInfectadas()}.max()
	}
	method enfermedadesAgresivas(){
		return enfermedades.filter{enfermedad=>enfermedad.esAgresiva(self)}
	}
	method celulasInfectadasAgresivamente(){
		return (self.enfermedadesAgresivas()).map{enfermedad=>enfermedad.celulasInfectadas()}.sum()
	}
}







