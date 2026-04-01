//TP1

//1
object pepita {
  var energia = 100 //calorias iniciales
  
  method energia() { //getter
   return energia
  }
 
  method energia(_energia) { //setter
   energia = _energia
  }
  
  method volar(distancia) { //orden
   energia = energia - 10 - distancia/10 
   //despegar cuesta 10cal - 1cal cada 10mts
  }

  method cansada() { //consulta
    return energia < 30
  }

  method descansar() { //orden
    energia = energia + 10
  }

  method comer(alimento) {
   energia = energia + alimento.energiaQueAporta()
  }

}

object alpiste {

  method alpiste(_alpiste) {
    return 
  }

  method energiaQueAporta() { //consulta
   return 25
  }
}

object manzana {
  var calorias = 20
  var madurez = 0 //inmadura

  method madurar() {
    madurez = madurez + 1
  }

  method madurez() {
    return madurez
  }

  method calorias() {
    return calorias
  }

  method calorias(_calorias) {
    calorias = _calorias
  }

  method energiaQueAporta() {
    if (self.madurez() >= 3) return 0 //se pudre
    return calorias * madurez
  }
}


// wollok:pepita> pepita.volar(200)
// ✓ 
// wollok:pepita> pepita.energia()
// ✓ 70
// wollok:pepita> pepita.cansada()
// ✓ false
// wollok:pepita> pepita.volar(350)
// ✓ 
// wollok:pepita> pepita.cansada()
// ✓ true
// wollok:pepita> pepita.descansar()
// ✓ 
// wollok:pepita> pepita.cansada()
// ✓ false

// wollok:pepita> pepita.volar(900)
// ✓ 
// wollok:pepita> pepita.energia()
// ✓ 0
// wollok:pepita> pepita.comer(alpiste)
// ✓ 
// wollok:pepita> pepita.comer(alpiste)
// ✓ 
// wollok:pepita> pepita.energia()
// ✓ 50
// wollok:pepita> pepita.cansada()
// ✓ false

// pepita.comer(manzana)
// ✓ 
// wollok:pepita> pepita.energia()
// ✓ 100
// wollok:pepita> pepita.comer(manzana) INMADURA
// ✓ 
// wollok:pepita> pepita.energia()
// ✓ 100
// wollok:pepita> manzana.madurar() MADUREZ 1
// ✓ 
// wollok:pepita> pepita.comer(manzana)
// ✓ 
// wollok:pepita> pepita.energia() +20
// ✓ 120
// wollok:pepita> manzana.madurar()
// ✓ 
// wollok:pepita> pepita.comer(manzana)
// ✓ 
// wollok:pepita> pepita.energia() MADUREZ 2 -> +40
// ✓ 160
// wollok:pepita> manzana.madurar()
// ✓ 
// wollok:pepita> pepita.comer(manzana)
// ✓ 
// wollok:pepita> pepita.energia() MADUREZ 3 -> +0
// ✓ 160