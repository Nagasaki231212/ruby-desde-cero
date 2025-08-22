puts "Precio de la unidad del producto: "

unit_price = gets.chomp.to_f

puts "Cantidad del producto: "

quantity = gets.chomp.to_i

subtotal = (unit_price * quantity)

puts "El subtotal de su factura es de : #{subtotal}"
