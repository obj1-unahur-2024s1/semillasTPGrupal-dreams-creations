
class Planta{
	var anioDeObtencion
	var altura
	
	method hsDeSolQueTolera()
	method esFuerte() = self.hsDeSolQueTolera() >= 10
	method espacio()
}

class Menta inherits Planta{
	override method hsDeSolQueTolera() = 6
	override method espacio() = altura * 3
	method daSemillas(){
		return(self.esFuerte() or (altura > 0.4))
	}
}
/*Variedades */
class Hierbabuena inherits Menta{
	override method espacio() = (altura * 3) * 2 
}

class Soja inherits Planta{
	override method hsDeSolQueTolera(){
		if (altura < 0.5){
			return 6
		}else if(altura >= 0.5 or altura >= 1){
			return 7
		}else {return 9}
	}
	override method espacio() = altura / 2
	method daSemillas(){
		return ((self.esFuerte() or anioDeObtencion >= 2007) and altura > 1) 
	}
	
}
/*Variedades */
class SojaTransgenica inherits Soja{
	override method daSemillas() = false
}

class Quinoa inherits Planta{
	var hsDeSolQueTolera
	
	override method espacio() = 0.5
	override method hsDeSolQueTolera() = hsDeSolQueTolera
	method daSemillas(){
		return (self.esFuerte() or anioDeObtencion < 2005)
	}
	
	
}