import pilotos.*
import escuderias.*
import neumaticos.*

object campeonato {
const pilotos  = [leclerc , sainz , piastri, norris, verstappen]
var temperatura = 45
var primero = verstappen
var segundo = norris
var tercero = leclerc
var cuarto = piastri
var ultimo = sainz
var vueltaRapida = 0
    method temperatura(){
        return temperatura
    }
    method cambiarTemperatura(valor){
     temperatura = valor
    }
    method darDeBaja(piloto){pilotos.remove(piloto)}
    method deltaPuntos(){
        pilotos.sortBy({a,a2=>a.puntos()>a2.puntos()})
        return pilotos.first().puntos() - pilotos.last().puntos()
    }
    method esCompetitivo(){return self.deltaPuntos()<100}
    method hayPilotosDeEscuderia(escuderia) = pilotos.any({a=>a.escuderia() == escuderia})
    method puntosPorEscuderia(escuderia) {pilotos.filter({a=>a.escuderia()==escuderia}).sum({a=>a.puntos()})}
    method registrarCierreFecha(ganador,segundaPosicion,terceraPosicion,caurtoPosicion,ultimoPosicion,rapido){
        primero = ganador
        segundo = segundaPosicion
        tercero = terceraPosicion
        cuarto = caurtoPosicion
        ultimo = ultimoPosicion
        vueltaRapida = rapido
        pilotos.forEach({p=>p.sumarPuntos()})
        }
    method registrarPiloto(){}
    method primero() = primero
    method segundo() = segundo
    method vueltaRapida() = vueltaRapida
    method totalDePuntos(){return pilotos.sum({p=>p.puntos()})}
    method ultimo() = ultimo
}