# factura 1
product_one_price = 500.00
product_one_quantity = 2

# factura 2
product_two_price = 750.50
product_two_quantity = 3

invoice_total_one =  (product_one_price * product_one_quantity)
invoice_total_two = (product_two_price * product_two_quantity)

total_before_tax  = (invoice_total_one + invoice_total_two)

tax_amount = (total_before_tax * 0.16)

final_total = (total_before_tax + tax_amount)

puts "El total final de la factura es: #{final_total}"
