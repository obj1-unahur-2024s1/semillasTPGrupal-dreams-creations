import semillas.*
/**Faltan tests desde etapa 4 y etapa 6 - mejorar plantar()*/
class Parcela{
	var ancho
	var largo
	var hsDeSolQueRecibeAlDia
	const lPlantas = []
	
	method hsDeSol() = hsDeSolQueRecibeAlDia
	method listaDePlantas() = lPlantas
	
	method superficie() = ancho * largo
	method cantMaxDePlantas(){
		if (ancho > largo){
			return self.superficie() / 5
		}else {
			return self.superficie() / 3 + largo 
		}
	}
	method tieneComplicaciones(){
		return lPlantas.any({x => x.hsDeSolQueTolera() < hsDeSolQueRecibeAlDia})
	}
	
	//3- REVEER y hacer test//
	/*method hayEspacioParaUnaPlanta(){
		return (self.cantMaxDePlantas() - lPlantas.size() >= 1)
	}
	method plantar(unaPlanta){
		if(self.hayEspacioParaUnaPlanta()){
			lPlantas.add(unaPlanta)
		}else if(hsDeSolQueRecibeAlDia >= unaPlanta.hsDeSolQueTolera()){
			lPlantas.add(unaPlanta)
		}
	}*/
	
}
// 5
class Agroecologica inherits Parcela{
	method seAsociaBien(unaPlanta){
		return (not self.tieneComplicaciones() and unaPlanta.sonBuenasLasCondicionesDe(self))
	}
}

class Industriales inherits Parcela{
	method seAsociaBien(unaPlanta){
		return (lPlantas.size() >= 2 and unaPlanta.esFuerte() )
	}
}

