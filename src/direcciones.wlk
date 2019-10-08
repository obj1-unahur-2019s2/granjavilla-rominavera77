import oso.*
import wollok.game.*


object este {
	method siguientePosicion(position){
		if(position.x() == game.width() - 1){
			return position
		}
		else { return position.right(1)}
	}		
}

object oeste {
	method siguientePosicion(position){
		if(position.x() == game.width() - 1){
			return position
		}
		else { return position.right(1)}
	}		
}

object norte{
	method siguientePosicion(position){
		if(position.y() == game.lenght() - 1){
			return position
		}
		else { return position.right(1)}
	}		
}