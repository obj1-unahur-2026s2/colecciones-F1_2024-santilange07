import pilotos.*
import escuderias.*
import neumaticos.*

object campeonato {
const pilotos  = [leclerc , sainz , piastri, norris, verstappen]
var temperatura = 45
var primero = 0
var segundo = 0
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
    method registrarCierreFecha(pilotoGanador,pilotoSegundo,rapido){
        primero = pilotoGanador
        segundo = pilotoSegundo
        vueltaRapida = rapido
        }
    method registrarPiloto(){}
    method primero() = primero
    method segundo() = segundo
    method vueltaRapida() = vueltaRapida
}