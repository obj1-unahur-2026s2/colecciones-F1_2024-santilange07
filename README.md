# F1 2024 - Modelado de Temporada

### Pautas para la resolución del ejercicio

Desarrollar la solución en los archivos:
- campeonato.wlk
- pilotos.wlk
- neumaticos.wlk
- escuderias.wlk
- testF1.wtest

**Importante sobre los nombres de métodos:**
Los únicos nombres de métodos que son obligatorios son aquellos que aparecen en los tests de autocorrección. El resto pueden implementarse con libertad de nombres, siempre que respeten los principios de polimorfismo y correcto uso de colecciones. Esto significa que ustedes tendrán libertad de diseño en cómo modelar el comportamiento interno de los objetos.

No realizar cambios en los nombres de los archivos, ya que las correcciones solo tienen en cuenta los objetos modelados en los mismos.

---

## Enunciado

Modelar situaciones de la temporada 2024 de Fórmula 1 usando únicamente objetos autodefinidos en Wollok.

## Sección 1: Los Pilotos

Los pilotos compiten en la temporada 2024 con características distintivas que afectan su rendimiento:

- **verstappen** tiene 437 puntos iniciales y corre para Red Bull Racing. Cuando gana una carrera suma 25 puntos. También puede hacer vuelta rápida, que le otorga 1 punto adicional, pero solo cuando tiene más de 200 puntos acumulados.

- **norris** tiene 374 puntos iniciales y corre para McLaren. Tiene un estilo consistente: cuando gana suma 25 puntos y si el que llega en segundo lugar es compañero de escudería, a éste le suman 3. También puede hacer vuelta rápida bajo las mismas condiciones que Verstappen (más de 200 puntos).

- **sainz** tiene 241 puntos iniciales y corre para Ferrari. Es conocido por su consistencia: cuando gana suma 25 puntos, y si además viene de haber ganado la carrera anterior, suma 10 puntos adicionales por racha. Inicialmente no viene de una victoria previa. Si hace vuelta rápida no le suma nada.

- **leclerc** tiene 356 puntos iniciales y también corre para Ferrari. Cuando gana suma sus 25 puntos y debido a su estilo agresivo, hace que le descuenten 3 puntos al piloto que llegó segundo. Si hace vuelta rápida se le suma 2 puntos.

- **piastri** tiene 292 puntos iniciales y corre para McLaren. Cuando gana suma 25 puntos, sin otros efectos adicionales. No tiene efectos especiales en vuelta rápida.

Todos los pilotos deben poder:
- Reportar la cantidad de puntos que tienen
- Registrar que realizaron un giro rápido (vuelta rápida) con su lógica específica
- Registrar que completó una vuelta con su neumático actual

## Sección 2: Los Neumáticos

Cada piloto sale a pista con un tipo de neumático colocado. Se tienen tres compuestos disponibles:

- **blando**: dura 15 vueltas y rinde mejor por debajo de los 25 °C.
- **medio**: dura 30 vueltas y rinde mejor entre 25 y 40 °C.
- **duro**: dura 45 vueltas y rinde mejor por encima de los 40 °C.

Si se pasan de la cantidad de vueltas de duración, ya no rinden.

Se necesita saber en cualquier momento:
- Cuántas vueltas le quedan a cada piloto con el neumático actual
- Si rinde mejor para la temperatura de la carrera

Cuando un piloto entra al pit stop cambia su neumático y reinicia el contador de vueltas a 0.

## Sección 3: Las Escuderías

Las escuderías tienen un presupuesto anual:
- **redBull**: 415 millones de dólares
- **mclaren**: 285 millones de dólares
- **ferrari**: 320 millones de dólares

Cada piloto pertenece a una escudería.

## Sección 4: El Campeonato

El campeonato debe poder:

**Gestión de pilotos:**
- Registrar pilotos de esta temporada (los 5 mencionados)
- Dar de baja a un piloto

**Registros de fechas:**
- Registrar el resultado de cada carrera (quién llegó primero, segundo y quién hizo la mejor vuelta)

**Consultas sobre pilotos y puntos:**
- Obtener el piloto líder (mayor cantidad de puntos)
- Obtener los puntos totales acumulados en el campeonato por una escudería dada
- Conocer el delta de puntos (diferencia entre el líder y el último clasificado)
- Saber si el campeonato es competitivo. Eso es verdadero cuando el delta de puntos es menor que 100
- Saber si hay algún piloto de una escudería dada

## Casos de Prueba (test a desarrollar en testF1.wtest)

### Caso 1
Verstappen gana la carrera y hace vuelta rápida. Sus puntos pasan a 463. En segundo lugar llega Leclerc.

### Caso 2
Norris gana la carrera (y hace mejor vuelta +1) y en segundo lugar llega Piastri. Sus puntos pasan a 400 y los de Piastri suben a 295.

### Caso 3
Sainz gana su primera carrera consecutiva. Sus puntos pasan de 241 a 266.

### Caso 4
Sainz gana dos carreras consecutivas. Tras la primera tiene 266 puntos; tras la segunda, 301 (suma 25 + 10 por racha ganadora).

### Caso 5
Ferrari acumula al inicio 597 puntos entre Leclerc (356) y Sainz (241).

### Caso 6
Con los cinco pilotos en el campeonato usando los puntos iniciales: el total repartido es 1700 puntos, el líder es Verstappen con 437, el último es Sainz con 241, el delta es 196 y el campeonato no es competitivo (196 > 100).

### Caso 7
Leclerc gana una carrera con Sainz en segundo lugar. Leclerc suma 25 puntos y hace vuelta rápida (+2 puntos adicionales). El total de puntos de Leclerc pasa de 356 a 383 y el de Sainz baja de 241 a 238 (pierde 3 puntos por ser segundo con Leclerc agresivo).

### Caso 8
Sainz gana una carrera (sin racha previa). Sus puntos pasan a 266. Si luego gana otra, sus puntos pasan a 301 (suma 25 + 10 por racha ganadora).

### Caso 9
Leclerc hace vuelta rápida estando a 356 puntos. Suma 2 puntos adicionales llegando a 358.

### Caso 10
Norris hace vuelta rápida con más de 200 puntos (374). Suma 1 punto pasando a 375.

### Caso 11
Sainz hace vuelta rápida. No suma nada porque no tiene efectos especiales de vuelta rápida, permaneciendo en 241 puntos.

### Caso 12
Verstappen comienza con neumático blando (15 vueltas de duración). El ingeniero suma 10 vueltas, quedándole 5 vueltas disponibles.

### Caso 13
Verstappen entra al pit stop y cambia su neumático de blando a duro. Sale con 45 vueltas disponibles nuevas y su contador reinicia a 0.

### Caso 14
El campeonato registra los 5 pilotos iniciales (Verstappen, Norris, Sainz, Leclerc, Piastri). Hay representación de Ferrari en el campeonato.

---

## Restricciones

Resolver utilizando únicamente los conceptos trabajados hasta el momento:

- objetos;
- mensajes;
- mensajes con parámetros;
- referencias;
- atributos y estado;
- encapsulamiento;
- polimorfismo;
- colecciones

**No utilizar:**

- clases;
- herencia;
- conceptos avanzados que no sean necesarios para resolver el problema.

---

## Consideraciones para el diseño

Agregar nuevos pilotos o escuderías **no debería requerir modificar la lógica del campeonato**.

La solución debe modelar el comportamiento del dominio y nada más.

Pueden definir métodos privados, auxiliares o con nombres personalizados según su diseño, siempre que respeten los nombres obligatorios para la autocorrección.

---

## Glosario de Nombres Obligatorios (Únicamente para Autocorrección)

**Estos son los ÚNICOS nombres de métodos y objetos que están obligados a usar exactamente como aparecen aquí, porque son los que utilizan los tests de autocorrección.**

### Objetos (Obligatorios)
```
blando
campeonato
duro
ferrari
leclerc
mclaren
medio
norris
piastri
redBull
sainz
verstappen
```

### Métodos (Obligatorios - Solo estos aparecen en los tests de autocorrección)
```
campeonato:
  - deltaPuntos
  - esCompetitivo
  - hayPilotoDeEscuderia
  - puntosPorEscuderia
  - registrarCierreFecha
  - registrarPiloto

pilotos (todos):
  - entrarAlPitStop
  - hizoVueltaRapida
  - puntos
  - sumarUnaVuelta
  - vueltasQueLeQuedan
```

**Nota importante:** El resto de la funcionalidad (cómo internamente ganan carreras, cómo se deducen puntos, cómo definen ser compañero de escudería, etc.) pueden implementarla con libertad de nombres de métodos, respetando polimorfismo y buen uso de colecciones.
