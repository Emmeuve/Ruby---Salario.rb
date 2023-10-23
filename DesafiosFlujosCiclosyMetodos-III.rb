#Ejercicio 1

#Se crea un programa que mediante el uso de métodos permita calcular el nuevo salario
#de un colaborador/a en función de un porcentaje mínimo de aumento establecido.
#Esta es la fórmula salario + (salario \* (incremento / 1000)).

def formula_salario(salario, incremento)
salario + (salario \* (incremento / 1000))
end

puts 'Ingrese el salario actual'
salario = gets.chomp.to_f
puts 'Ingrese el porcentaje de aumento'
incremento = gets.chomp.to_f
puts "El nuevo salario es: #{formula_salario(salario, incremento)}"

#Ejercicio 2

#Programa que piense un número secreto
#y le pida al usuario que lo adivine. Si el número
#es correcto debe imprimir ¡Lo lograste!, de lo contrario
#debe imprimir ¡Lamentablemente ha fallado! y debe
#decir si el número es mayor o menor al número secreto.
#Usa un bucle while para adivinar el número.
#se genera un número aleatorio entre 1 y 100

numero_secreto = rand(1..100)
puts "Adivina el numero secreto"
puts "Ingrese un numero"
numero = gets.chomp.to_i
numero_secreto = rand(1..10)
while numero != numero_secreto
if numero > numero_secreto
puts "El numero es menor"
else
puts "El numero es mayor"
end
puts "Ingrese otro numero"
numero = gets.chomp.to_i
end
puts "¡Lo lograste!"
puts "El numero es #{numero_secreto}"
puts "¡Felicidades!"

#Ejercicio 3
#utilizando como base el ejercicio de cálculo de IMC en la guía de ejercicios,

agregar en el cálculo de Obesidad los elementos faltantes dado que la obesidad se subdivide en 3 niveles.
Deberás agregar a la lógica condicional los cálculos para esos tres niveles.

puts 'Ingrese su peso en kilogramos'
peso = gets.chomp.to_i
puts 'Ingrese su altura en metros'
altura = gets.chomp.to_f

imc = peso / (altura \* altura)

puts "Su IMC es: #{imc}"
if imc < 18.5
puts 'Esta Bajo de Peso'
elsif imc >= 18.5 && imc < 24.9
puts 'Es un Peso Normal'
elsif imc >= 25 && imc < 29.9
puts 'Está en Sobrepeso'
elsif imc >= 30 && 34.9
puts 'Está en Obesidad Moderado'
elsif imc >= 35 && 39.9
puts 'Está en Obesidad Severa'
else
imc <= 40
puts 'Está en Obesidad Muy Severa'
end
