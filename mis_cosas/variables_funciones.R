x = (pi^2) / 2
x

y <- cos(pi/4)
y

sin(pi/4) + cos(pi/4) -> z
z

cuadrado = function(x) {x^2}
cuadrado(8)
cuadrado(y)
f = function (x, y) {
  x+y
}
f(4,8)

factorial_custom = function(x) {
  resultado = 1;
  if(x > 1) {
    for(i in 2:x) {
      resultado = resultado * i;
    }
  }
  resultado
}

factorial_custom(4)
factorial(4)

factorial_custom(1)
factorial(1)

factorial_custom(0)
factorial(0)

# Listar las variables y funciones creadas
ls()

# ELimina la variable x
rm(x)

# Borra todo
rm(list = ls())

class(2+2i)
sqrt(as.complex(-5))
e
exp(1)
log(1750,4)
print(atan(50),3)
