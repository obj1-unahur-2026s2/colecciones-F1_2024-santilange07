import pilotos.*
object ferrari {
    const pilotos  = [leclerc , sainz]
    method presupuesto(){
        return 415
    }
    method pilotos(){
        return pilotos
    }
    method totalDePuntos(){
        return pilotos.sum({p=>p.puntos()})
    }
}

object mclaren {
    const pilotos  = [norris , piastri]
    method presupuesto(){
        return 285
    }
    method pilotos(){
        return pilotos
    }
     method totalDePuntos(){
        return pilotos.sum({p=>p.puntos()})
    }
}

object redBull {
    const pilotos  = [verstappen]
    method presupuesto(){
        return 320
    }
    method pilotos(){
        return pilotos
    }
     method totalDePuntos(){
        return pilotos.sum({p=>p.puntos()})
    }
}