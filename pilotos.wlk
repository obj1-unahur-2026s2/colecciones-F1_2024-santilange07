import escuderias.*
import neumaticos.*
import campeonato.*

object verstappen {
    var puntos = 437
    var neumaticos = blando
    var vueltas = 0
    var tiempoDeVuelta =0 
    method sumarPuntos(){
        if(self.ganoCarrera()){puntos +=25}
        if (self.hizoVueltaRapida() and self.puntos() > 200){
            puntos += 1
        }
          if(self.esSegundo() and campeonato.primero().esLeclerc()){puntos-=3}
    }
    method esSegundo(){return campeonato.segundo()==self}
    method sumarUnaVuelta(tiempo){
        vueltas += 1
        tiempoDeVuelta = tiempo
    }
    method entrarAlPitStop(neumaticoNuevo){
        vueltas = 0
        neumaticos = neumaticoNuevo
    }
    method hizoVueltaRapida(){
        return campeonato.vueltaRapida() == self
    }
    method puntos(){
        return puntos
    }
    method vueltasQueLeQuedan(){
         return vueltas - neumaticos.duracion()
    }
    method escuderia(){
        return redBull
    }
    method ganoCarrera(){
        return campeonato.primero() == self
    }
    method esLeclerc(){
        return false
    }
}

object norris {
    var puntos = 374
    var neumaticos = blando
    var vueltas = 0
     var tiempoDeVuelta =0 
    method sumarPuntos(){
        if(self.ganoCarrera()){puntos +=25}
        if (self.hizoVueltaRapida() and self.puntos() > 200){
            puntos += 1
        }
          if(self.esSegundo() and campeonato.primero().esLeclerc()){puntos-=3}
    }
    method esSegundo(){return campeonato.segundo()==self}
    method sumarUnaVuelta(tiempo){
        vueltas += 1
        tiempoDeVuelta = tiempo
    }
    method entrarAlPitStop(neumaticoNuevo){
        vueltas = 0
        neumaticos = neumaticoNuevo
    }
    method hizoVueltaRapida(){
        return campeonato.vueltaRapida() == self
    }
    method puntos(){
        return puntos
    }
    method vueltasQueLeQuedan(){
         return vueltas - neumaticos.duracion()
    }
    method escuderia(){
        return mclaren
    }
     method ganoCarrera(){
        return campeonato.primero() == self
    }
    method esLeclerc(){
        return false
    }
}

object sainz {
    var puntos = 241
    var neumaticos = blando
    var vueltas = 0
    var tiempoDeVuelta =0
    var racha = false 
    method sumarPuntos(){
        if (self.ganoCarrera() and racha){
            puntos += 10
        }
        if(self.ganoCarrera()){puntos +=25
        racha = true}
        if(self.esSegundo() and campeonato.primero().esLeclerc()){puntos-=3}
    }
    method esSegundo(){return campeonato.segundo()==self}
    method sumarUnaVuelta(tiempo){
        vueltas += 1
        tiempoDeVuelta = tiempo
    }
    method entrarAlPitStop(neumaticoNuevo){
        vueltas = 0
        neumaticos = neumaticoNuevo
    }
    method hizoVueltaRapida(){
        return campeonato.vueltaRapida() == self
    }
    method puntos(){
        return puntos
    }
    method vueltasQueLeQuedan(){
         return vueltas - neumaticos.duracion()
    }
    method escuderia(){
        return ferrari
    }
     method ganoCarrera(){
        return campeonato.primero() == self
    }
    method esLeclerc(){
        return false
    }
}

object leclerc {
    var puntos = 356
    var neumaticos = blando
    var vueltas = 0
     var tiempoDeVuelta =0 
    method sumarPuntos(){
        if(self.ganoCarrera()){puntos +=25}
        if (self.hizoVueltaRapida()){
            puntos += 2
        }
    }
    method esSegundo(){return campeonato.segundo()==self}
    method sumarUnaVuelta(tiempo){
        vueltas += 1
        tiempoDeVuelta = tiempo
    }
    method entrarAlPitStop(neumaticoNuevo){
        vueltas = 0
        neumaticos = neumaticoNuevo
    }
    method hizoVueltaRapida(){
        return campeonato.vueltaRapida() == self
    }
    method puntos(){
        return puntos
    }
    method vueltasQueLeQuedan(){
        return vueltas - neumaticos.duracion()
    }
    method escuderia(){
        return ferrari
    }
     method ganoCarrera(){
        return campeonato.primero() == self
    }
    method esLeclerc(){
        return true
    }
}

object piastri {
  var puntos = 292
    var neumaticos = blando
    var vueltas = 0
     var tiempoDeVuelta =0 
    method sumarPuntos(){
        if(self.ganoCarrera()){puntos +=25}
        if(self.esSegundo() and norris.ganoCarrera()){puntos+=3}
        if(self.esSegundo() and campeonato.primero().esLeclerc()){puntos-=3}
    }
    method sumarUnaVuelta(tiempo){
        vueltas += 1
        tiempoDeVuelta = tiempo
    }
    method entrarAlPitStop(neumaticoNuevo){
        vueltas = 0
        neumaticos = neumaticoNuevo
    }
    method hizoVueltaRapida(){
        return campeonato.vueltaRapida() == self
    }
    method puntos(){
        return puntos
    }
    method vueltasQueLeQuedan(){
        return vueltas - neumaticos.duracion()
    }
    method escuderia(){
        return mclaren
    }
     method ganoCarrera(){
        return campeonato.primero() == self
    }
    method esSegundo(){return campeonato.segundo()==self}
    method esLeclerc(){
        return false
    }
}