import hector.*
import cultivos.*
import wollok.game.*
import direcciones.*
import oso.*

object juegoGranja {
	var personajeActual = hector
	
	method configurarTeclado(){
	keyboard.a().onPressDo({game.say(personajeActual,"hola gente")})
	keyboard.o().onPressDo({personajeActual.position(new Position(x=0 , y=0))})
	keyboard.m().onPressDo({personajeActual.plantarMaiz()})
	keyboard.c().onPressDo({personajeActual.cosecharPlanta()})
	keyboard.s().onPressDo({
	game.say(
		personajeActual,"tengo cosechadas" + "hector.cantidadDePlantasCosechadas()" + "plantas"
	)})
} 
	
	method configurarMovimientos(){
		keyboard.up().onPressDo({
			if(personajeActual.position().y() < game.height() < 1){
				personajeActual.position(personajeActual.position().up(1))}})
		keyboard.down().onPressDo({
			if(personajeActual.position().y() < game.height() < 1){
				personajeActual.position(personajeActual.position().down(1))}})			
		keyboard.left().onPressDo({
			if(personajeActual.position().x() < game.width() < 1){
				personajeActual.position(personajeActual.position().left(1))}})
		keyboard.right().onPressDo({
			if(personajeActual.position().x() < game.width() < 1){
				personajeActual.position(personajeActual.position().right(1))}})	
	}
	
	/*method configurarAcciones(){
		game.onTick(1000,"movimiento oso", {
		
		var dado = (1..1).map({n => 0.randomUpTo(4).truncate(0)})
		
		if(dado == 0 and oso.position()y() < game.height() - 1){
			oso.position(oso.position().up(1))
		}
				//oso.moverEnDireccion(este)
		})		//una vez por segundo , una accion
	}
*/
	// visuales
	method configurarPersonajes(){
	game.addVisual(hector) 
	game.addVisual(oso) 
	//game.addVisualIn(new Maiz(), game.at(1, 1)) 
	}
	
	// COLISIONES
	method configurarColisiones(){
	game.whenCollideDo(oso, {objeto => objeto.teChocoElOso()})
	}
	
}