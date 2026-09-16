import campeonato.*
object blando {
method duracion(){
    return 15
}
method rindeMejor()= campeonato.temperatura() < 25

}


object medio {
method duracion(){
    return 30
}
method rindeMejor()= campeonato.temperatura().between(25, 40)
}

object duro {
    method duracion(){
    return 30
}
method rindeMejor()= campeonato.temperatura() > 40

}