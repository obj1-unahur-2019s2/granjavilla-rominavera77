import wollok.game.*

object oso {
	var property position = new Position(x = 3, y = 3)
	var property image =  "spot.png"


	method moverEnDireccion(direccion){
		self.position(direccion.siguientePosicion(self.position()))
	}

}


/* 
import wollok.game.*
import cultivos.*


object oso {
	var property position = new Position(x = 3, y = 2)
	const property image = "spot.png"
	var property plantasCosechadas = []
	
	method regarPlanta(){
		// DEVUELVE UNA COLECCION "siempre", si no hay nada devuelve una lista vacia, 
		// si hay una sola planta devuelve una lista con una sola planta
		game.colliders(self).forEach({planta => planta.regate()})
	}
	
}
*/