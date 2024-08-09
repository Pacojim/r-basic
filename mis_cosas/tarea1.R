ejercicio1 = function(segundosDesde2018) {
 anno = 2018;
 resuelto = FALSE;
 
 while (!resuelto) {
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
   segundosAno = diasAno*24*60*60;
   if(segundosDesde2018%/%segundosAno > 1) {
     segundosDesde2018 = segundosDesde2018 - segundosAno;
     anno = anno + 1;
   } else {
     resuelto = TRUE;
   }
 }
}