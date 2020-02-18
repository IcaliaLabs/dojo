# frozen_string_literal: true

# Write a script to set up core reviews for all reviewees
# Rules are:
# 1. 2 random reviewers per reviewee
# 2. When the reviewers are selected send an e-mail to the reviewee informing them of the selection
# 3. After the email is sent, create a txt file format of the email for each reviewee, with the following format:
#   E-mail to: kurenn@icalialabs.com
#   Body:
#   Hi Abraham Kuri
#   Your reviewers are Walter and Vov
#   Sent at: 2018-01-07 20:21:43 -0600
#   ---
## Hint!
# rand(n) gives you a random number from 0 to n
# Check the `Time` class on the ruby docs
#
## Sample output:
## Sending E-mail to: kurenn@icalialabs.com
## Hi Abraham Kuri
## Your reviewers are Walter and Vov

REVIEWERS = [
  { name: 'Walter' },
  { name: 'Vov' },
  { name: 'Cejas' },
  { name: 'Kuri' },
  { name: 'Sherwell' }
].freeze

REVIEWEES = [
  { name: 'Barbara', email: 'bmbrina@icalialabs.com' },
  { name: 'Hector', email: 'hector@icalialabs.com' },
  { name: 'Kevin', email: 'kevin@icalialabs.com' },
  { name: 'Julian', email: 'julz@icalialabs.com' },
  { name: 'Luis Gerardo', email: 'gvaldez@icalialabs.com' },
  { name: 'Cesar Nava', email: 'cnava@icalialabs.com' }
].freeze

## Your script starts here

REVIEWERS = [
  { name: 'Walter' },
  { name: 'Vov' },
  { name: 'Cejas' },
  { name: 'Kuri' },
  { name: 'Sherwell' }
].freeze

REVIEWEES = [
  { name: 'Barbara', email: 'bmbrina@icalialabs.com' },
  { name: 'Hector', email: 'hector@icalialabs.com' },
  { name: 'Kevin', email: 'kevin@icalialabs.com' },
  { name: 'Julian', email: 'julz@icalialabs.com' },
  { name: 'Luis Gerardo', email: 'gvaldez@icalialabs.com' },
  { name: 'Cesar Nava', email: 'cnava@icalialabs.com' }
].freeze

def write_to(filename = 'tmp.txt')
  file = File.new(filename, 'w')
  file.write "---\n"
  yield(file) if block_given?
  file.write '---'
  file.close
end

# Devuelve aleatoriamente una cantidad de elementos de los datos
def delvolver_revisores(cantidad, listado)
  seleccionados = []

  while seleccionados.size < cantidad
    index = rand(listado.size)
    seleccionados << listado[index]
    seleccionados.uniq!
  end

  seleccionados
end

# Devuelve el texto del email
def preparar_correo_electronico(nombre, email, revisores)
  "E-mail to: #{email}
          Body:

          Hi, #{nombre}.
          Your reviewers are #{revisores[0][:name]} and #{revisores[1][:name]}.
          "
end

# Imprime el email
def emails_list(listado_alumnos)
  listado_alumnos.each do |alumno|
    revisores = delvolver_revisores(2, REVIEWERS)
    nombre_alumno = alumno[:name]
    email_alumno = alumno[:email]

    puts preparar_correo_electronico(nombre_alumno, email_alumno, revisores)

    write_to "#{nombre_alumno}.txt" do |file|
      file.write "  E-mail to: #{email_alumno} \n"
      file.write "  Body: \n"
      file.write "  Hi,#{nombre_alumno} \n"
      file.write "  Your reviewers are #{revisores.first[:name]} and #{revisores.last[:name]}. \n"
      file.write "  Sent at: #{Time.now}\n"
    end
  end
end

# Ejecutar metodo - Mandar emails
emails_list(REVIEWEES)
