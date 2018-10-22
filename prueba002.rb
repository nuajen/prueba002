file = File.open('curso1.txt', 'r') 
data = file.readlines.map(&:chomp)
file.close
h = Hash.new


print data 

#mensaje de bienvenida output
def mostrar_mensaje(mensaje)
	puts "-" * 100
	puts mensaje
	puts "-" * 100
end



def promedio(data)
  suma = 0
data.each do |alumno|
	suma+= alumno.split(' ')[1].to_i		
end
puts suma / data.size
end



def aprobados(data)
	suma = 0
	data.reject {|x| suma.to_i / data.size <= 5}
end


def inasistencias(*data)
	
File.read("curso1.txt").count('A')
end




puts inasistencias

mostrar_mensaje "Bienvenidos. Porfavor ingresa el numero de la opcion que desees"

print data


	

option = 0

puts 'notas del curso', "\n"

while option
	puts 'Bienvenidos! ingresa opción del 1 al 4'
	puts ' '
	puts '1 para ver el nombre de cada alumuno y sus notas' 
	puts '2 para mostrar la cantidad de inasistencias totales'
	puts '3 para mostrar a los alumnos aprobados'
	puts '4 para salir'
	 

	option = gets.to_i

	case option

		when 1
		puts '1', "\n"
		puts promedio


	when 2
		puts '2', "\n"
		puts inasistencias
	when 3
		puts '3', "\n"
		puts aprobados
	when 4
		puts 'salir', "\n"
		exit

	else
		puts 'La opcion ingresada no es valida, vuelve a intentarlo'
	end
end


