/** First Wollok example */
import wollok.game.*

object lionel {
	
	var property position = game.at(3,5)
	
	method image() {
		return "lionel-titular.png"
	}

	method retroceder() {
		position = game.at(0.max(position.x() - 1), position.y()) 
	}
	
	method avanzar() {
		position = game.at((game.width() - 1).min(position.x() + 1), position.y()) 
	}

	method irAInicio() {
		position = game.at(0, 5)
	}

	method taquito(distancia) {
		pelota.desplazar(distancia)
	}
	
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)	

	method desplazar(distancia) {
		self.validarLionelAca()
		position = game.at(position.x() - distancia, 5)
	}

	method validarLionelAca() {
		if (lionel.position() != self.position()){
			self.error("Lionel no esta parado en la pelota")
		}
		
	}
}
