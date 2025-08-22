puts "Por favor ingrese su nombre completo: "

user_name = gets.chomp

puts "Ingrese su RFC: "

rfc_user = gets.chomp.upcase

puts "Confirmacion: Factura para #{user_name} Con RFC: #{rfc_user}"
