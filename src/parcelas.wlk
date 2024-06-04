import semillas.*

class Parcela{
	var ancho
	var largo
	var hsDeSolQueRecibeAlDia
	const lPlantas = []
	
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
	/*method plantar(unaPlanta){
		if(self.hayEspacioParaUnaPlanta()){
			return lPlantas.add(unaPlanta)
		}else if(hsDeSolQueRecibeAlDia >= unaPlanta.hsDeSolQueTolera()){
			return lPlantas.add(unaPlanta)
		}
	}
	method hayEspacioParaUnaPlanta(){
		return (self.cantMaxDePlantas() - lPlantas.size() >= 1)
	}*/
}