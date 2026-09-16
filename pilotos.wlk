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
        return redBull
    }
    method ganoCarrera(){
        return campeonato.primero() == self
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
}

object sainz {
    var puntos = 241
    var neumaticos = blando
    var vueltas = 0
    var tiempoDeVuelta =0
    var racha = false 
    method sumarPuntos(valor){
        if(self.ganoCarrera()){puntos +=25
        racha = true}
        if (self.ganoCarrera() and racha){
            puntos += 10
        }
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
        return ferrari
    }
     method ganoCarrera(){
        return campeonato.primero() == self
    }
}

object leclerc {
    var puntos = 356
    var neumaticos = blando
    var vueltas = 0
     var tiempoDeVuelta =0 
    method sumarPuntos(valor){
        if(self.ganoCarrera()){puntos +=25}
        if (self.hizoVueltaRapida()){
            puntos += 2
        }
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
        return ferrari
    }
     method ganoCarrera(){
        return campeonato.primero() == self
    }
}

object piastri {
  var puntos = 292
    var neumaticos = blando
    var vueltas = 0
     var tiempoDeVuelta =0 
    method sumarPuntos(valor){
        if(self.ganoCarrera()){puntos +=25}
        if(self.esSegundo() and norris.ganoCarrera()){puntos+=3}
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
}