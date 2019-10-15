class Maiz {
	var property position
	var property esAdulta = false 

	method image() {
		// TODO: hacer que devuelva la imagen que corresponde
		//return "corn_baby.png"
		if (esAdulta) {
			return "corn_adult.png"
		} else {
			return "corn_baby.png"
		}
	}

	method regate() {
		if (not esAdulta) { esAdulta = true }
	}
	method teChocoElOso() {
		self.regate()
	}
}

class Trigo {
	var property position
	var property etapaDeEvolucion = 0
	
	method image() { return "wheat_0.png" }
	method regate() { 
		return 
		if (etapaDeEvolucion == 0){ 
			self.image() == "wheat_1.png"
			self.etapaDeEvolucion() == 1}
		else if(etapaDeEvolucion == 1){
			self.image() == "wheat_2.png"
			self.etapaDeEvolucion() == 2}
		else if (etapaDeEvolucion == 2){
			self.image()== "wheat_3.png"
			self.etapaDeEvolucion() == 3}
		else {
			self.image()=="wheat_0.png"
			self.etapaDeEvolucion() == 0}
	}	
		
	method teChocoElOso() {
		if (position.x() > 0) {
			position = position.left(1)
		}
	}
}
 




/*class Maiz {
	var property position
	var property esAdulta = false
	
	
	method image() {
		// TODO: hacer que devuelva la imagen que corresponde
		return "corn_baby.png"
	}
	
	method regate(){
		if (not esAdulta) { esAdulta = true}
	} 
}

*/