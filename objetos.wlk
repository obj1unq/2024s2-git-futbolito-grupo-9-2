/** First Wollok example */
import wollok.game.*

object lionel {
	var camisetaActual = titular
	var property position = game.at(3,5) 
	
	method image() {
		return titular.image()
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
	method cambiarCamiseta(){
		self.validar()
		camisetaActual = camisetaActual.cambiar()
	}
	method validar(){
		if (not self.estaEnBordeIzquierdo()){
			self.error("lionel no está en el borde")
		}
	}
	method estaEnBordeIzquierdo(){
		return self.position().x()==0
	}
}
object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)	
}



object titular{
	const property image ="lionel-suplente.png"

	method cambiar(){
		return suplente
	}

}
object suplente{
	const property image ="lionel-titular.png"
	
	method cambiar(){
		return titular
	}
}