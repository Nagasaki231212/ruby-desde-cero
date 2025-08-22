puts "Subtotal de la factura: "

subtotal = gets.chomp.to_f

vat_amount = (subtotal * 0.16)

total_amount = (subtotal + vat_amount)

puts "Subtotal: #{subtotal}"
puts "IVA: #{vat_amount}"
puts "Total a pagar: #{total_amount}"
