# Ejercicio 1: 
# Si hubiéramos empezado a contar segundos a partir de las 12 campanadas que marcan el inicio de 2018,
# ¿a qué hora de qué día de qué año llegaríamos a los 250 millones de segundos? ¡Cuidado con los años bisiestos!

ejercicio1 = function(segundosDesde2018) {
 anno = 2018;
 mes = 1;
 resueltoAno = FALSE;
 segundosSobrantes = segundosDesde2018;
 diasAno = 365;
 segundosDia = 24*60*60;
 
 while (!resueltoAno) {
   diasAno = 365;
   if(anno%%4 == 0) {
     if(anno%%100 != 0) {
       diasAno = 366;
     } else {
       if(anno%%400 == 0) {
         diasAno = 366
       }
     }
   }
   segundosAno = diasAno*segundosDia;
   if(segundosSobrantes>=segundosAno) {
     segundosSobrantes = segundosSobrantes - segundosAno;
     anno = anno + 1;
   } else {
     resueltoAno = TRUE;
   }
 }
 segundosMeses = c(31*segundosDia, (if(diasAno == 365) 28 else 29)*segundosDia, 31*segundosDia, 30*segundosDia, 31*segundosDia, 30*segundosDia, 31*segundosDia, 31*segundosDia, 30*segundosDia, 31*segundosDia, 30*segundosDia, 31*segundosDia);
 contador = 1
 while (segundosSobrantes > segundosMeses[contador]) {
     segundosSobrantes = segundosSobrantes - segundosMeses[contador]
     mes = mes + 1
     contador = contador + 1
 }
 dia = 1 + segundosSobrantes %/% segundosDia
 segundosSobrantes = segundosSobrantes %% segundosDia
 hora = segundosSobrantes %/% (60*60)
 segundosSobrantes = segundosSobrantes %% (60*60)
 minutos = segundosSobrantes %/% 60
 segundosSobrantes = segundosSobrantes %% 60
 sprintf("La fecha es %d/%d/%d %d:%d:%d", dia, mes, anno, hora, minutos, segundosSobrantes)
}

ejercicio1(250000000)

# Ejercicio 2: 
# Crea una función en R que resuelva una ecuación de primer grado (de la forma Ax+B=0).
# Es decir, los parámetros deben ser los coeficientes (en orden) y la función tiene que devolver la solución.
# Por ejemplo, si la ecuación es 2x+4=0, la función tendría que devolver -2.
# Una vez creada la función, utilízala para resolver las siguientes ecuaciones de primer grado:
#  5x+3=0
# 7x+4 = 18
# x+1 = 1

resolverEcuacion = function(ecuacion, A, B, C = 0) {
  if(A != 0) {
    # sprintf('El resultado de la ecuación %s es: %f', ecuacion, (C-B)/A);
    (C-B)/A
  } else {
    print('La ecuación no tiene solución');
  }
}
resolverEcuacion('2x+4=0', 2, 4)
resolverEcuacion('5x+3=0', 5, 3)
resolverEcuacion('7x+4 = 18', 7, 4, 18)
resolverEcuacion('x+1 = 1', 1, 1, 1)

# Ejercicio 3:
# Da una expresión para calcular 3e-π con R y a continuación, da el resultado obtenido redondeado a 3 cifras decimales.

round(3*exp(1) - pi, 3)

# Ejercicio 4:
# Da una expresión para calcular el módulo del número complejo (2+3i)^2/(5+8i) y, a continuación,
# da el resultado obtenido redondeado a 3 cifras decimales.

round(Mod(((2+3i)^2)/(5+8i)), 3)
