# Si hubiéramos empezado a contar segundos a partir de las 12 campanadas que marcan el inicio de 2018,
# ¿a qué hora de qué día de qué año llegaríamos a los 250 millones de segundos? ¡Cuidado con los años bisiestos!

ejercicio1 = function(segundosDesde2018) {
 anno = 2018;
 mes = 0;
 resueltoAno = FALSE;
 segundosSobrantes = 0;
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
   if(segundosDesde2018%/%segundosAno >= 1) {
     segundosDesde2018 = segundosDesde2018 - segundosAno;
     anno = anno + 1;
   } else {
     resueltoAno = TRUE;
     segundosSobrantes = segundosDesde2018
   }
 }
 meses = c(31*segundosDia, (if(diasAno == 365) 28 else 29)*segundosDia, 31*segundosDia, 30*segundosDia, 31*segundosDia, 30*segundosDia, 31*segundosDia, 31*segundosDia, 30*segundosDia, 31*segundosDia, 30*segundosDia, 31*segundosDia);
 mesResuelto = FALSE
 contador = 1
 while (!mesResuelto) {
   if(segundosSobrantes >= meses[contador]) {
     segundosSobrantes = segundosSobrantes - meses[contador]
     mes = mes + 1
   } else {
     mesResuelto = TRUE
   }
 }
 dia = segundosSobrantes %/% segundosDia
 segundosSobrantes = segundosSobrantes %% segundosDia
 hora = segundosSobrantes %/% (60*60)
 segundosSobrantes = segundosSobrantes %% (60*60)
 minutos = segundosSobrantes %/% 60
 segundosSobrantes = segundosSobrantes %% 60
 sprintf("La fecha es %d/%d/%d %d:%d:%d", dia, mes, anno, hora, minutos, segundosSobrantes)
}

ejercicio1(250000000)
