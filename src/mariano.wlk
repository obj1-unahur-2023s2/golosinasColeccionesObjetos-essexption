import golosinas.*

object mariano {
	const golosinas = []
	
	method comprar(golosina) = golosinas.add(golosina)
	method desechar(golosina) = golosinas.remove(golosina) // golosinas.removeAll(golosina)
	
	method cantidadDeGolosinas() = golosinas.size()
	method tieneLaGolosina(unaGolosina) = golosinas.contains(unaGolosina)
	
	
	method probarGolosinas(){
		golosinas.forEach({ g => g.recibirMordisco()})
	}
	
	method hayGolosinaSinTACC(){
		return golosinas.any({g=>g.esSinTACC()})
	}
	method preciosCuidados(){
		return golosinas.all({g=>g.precio()<=10})
	}
	
	method golosinaDeSabor(unSabor){
		return golosinas.find({ g => g.sabor() == unSabor})
	}
	method golosinasDeSabor(unSabor){
		return golosinas.filter({ g => g.sabor() == unSabor})
	}
	
	method buscarGolosinas(closure){
		return golosinas.filter(closure)
	}
	
	
	method sabores() = golosinas.map({g=>g.sabor()}).asSet()
	
	method gustosFaltantes(todosLosSabores){
		return todosLosSabores.asSet().difference(self.sabores())
	}
	
	method golosinaMasCara(){
		return golosinas.max({g => g.precio()})
	}
	
	method pesoGolosinas(){
		return golosinas.sum({g=>g.peso()})
		// return golosinas.map({g=>g.peso()}).sum()
	}
	/* 
	method recursivo(lista,num,tope){
		if (lista.size()<tope) {lista.add(num);  self.recursivo(lista,num+1,tope)}
	}
	method algo(tope){
		const lista = []
		self.recursivo(lista,1,tope)
		return lista
	}
	*/
}
