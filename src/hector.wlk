import wollok.game.*
import cultivos.*

object hector {
	var property position = new Position(x = 3, y = 3)
	const property image = "player.png"
	var property plantasCosechadas = []
	
	
	method plantarMaiz(){
		game.addVisual(new Maiz(position=self.position()))
	}
	
	method regarPlanta(){
		// DEVUELVE UNA COLECCION "siempre", si no hay nada devuelve una lista vacia, 
		// si hay una sola planta devuelve una lista con una sola planta
		game.colliders(self).forEach({planta => planta.regate()})
	}
	
	method cosecharPlanta(planta){
		game.colliders(self).forEach({game.removeVisual(planta)})
		game.removeVisual(planta)
	}
	
	method plantasCosechadas(planta){
		plantasCosechadas.add(planta)
	}
	
	method cantidadDePlantasCosechadas(){
		return plantasCosechadas.size()
	}
	
}