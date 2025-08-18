## Lección 2: Las Cajas de Información (Variables y Tipos de Datos)

### 1. Teoría: ¿Dónde Guardamos la Información?

En la lección anterior, mostramos mensajes directamente en la pantalla con (puts). Pero, ¿qué pasa si queremos guardar un dato para usarlo después? Por ejemplo, el **RFC**  de un cliente o el total de una factura. Para eso, usamos **variables**.

Piensa en una variable como una **caja con una etiqueta**. Dentro de la caja guardas un dato, y la etiqueta es el nombre que le das para poder encontrarla fácilmente más tarde.

En Ruby, crear una variable (o "declararla") es tan fácil como darle un nombre y asignarle un valor con el signo de igual (`=`):

```ruby
# nombre_de_la_variable = valor
client_rfc = "LAN7008173R5"
```

Aquí, **client_rfc** es el nombre de nuestra variable (la etiqueta de la caja) y ``"LAN7008173R5"`` es el valor que guardamos dentro.

**Regla de Estilo Importante:** En Ruby, los nombres de las variables se escriben en ``snake_case.`` Esto significa todo en minúsculas, y las palabras se separan con un guion bajo (``_``).

### **Los Tipos de Datos: ¿Qué podemos guardar en las cajas?**

No todas las cajas son iguales. Dependiendo de lo que guardes, el dato es de un "tipo" diferente. Los más importantes por ahora son:

### ``String`` **(Cadena de Texto)** 📝

Sirve para guardar texto. Siempre va entre comillas (" o ').

**Ejemplo de Facturación:** El nombre de un cliente, la descripción de un producto, el UUID de un CFDI.

```Ruby
product_description = "Laptop Modelo X"
invoice_uuid = "F4B0E5D5-5A7A-4A4B-8E8D-1C2D3E4F5A6B"
```

### ``Integer`` **(Número Entero)** 🔢

Sirve para guardar números enteros, sin decimales.

**Ejemplo de Facturación:** La cantidad de productos, el número de una factura.

```Ruby
product_quantity = 10
invoice_number = 435
```

### ``Float`` **(Número Flotante)** 💰

Sirve para guardar números con decimales. Se usa un punto (.) para separar la parte entera de la decimal.

**Ejemplo de Facturación:** El precio de un producto, el total de una factura, el porcentaje de un impuesto.

```Ruby
unit_price = 2500.99
vat_tax = 0.16 # IVA del 16%
```
### ``Boolean`` **(Booleano)** ✅ / ❌

**Solo puede tener dos valores:** ``true`` (verdadero) o ``false`` (falso). Es como un interruptor de luz: encendido o apagado.

**Ejemplo de Facturación:** Para saber si una factura ya fue pagada (``is_paid``), si ya fue timbrada ante el **SAT** (``is_stamped``), etc.

```Ruby
is_paid = false
is_stamped = true
```

### ``Nil`` **(Nulo o Vacío)** 텅

Representa la ausencia de valor. Es una caja que está intencionalmente vacía.

**Ejemplo de Facturación:** Si una factura aún no tiene una fecha de pago, esa variable podría ser nil.

```Ruby
payment_date = nil
```

### **La Magia de la Interpolación**

Para mostrar variables junto a texto, hay una forma muy pro en Ruby llamada **interpolación.** En vez de "pegar" textos con el signo ``+``, metes la variable dentro del string usando ``#{}``. ¡Mira qué fácil!

```Ruby
client_name = "Empresa Ficticia S.A."
puts "Generando factura para el cliente: #{client_name}"
```

## **RFC**

El **RFC** (Registro Federal de Contribuyentes) es la clave única que usa el **SAT** para identificar a cada persona física o empresa. Se compone de las iniciales del nombre, la fecha de nacimiento/creación y una "homoclave" de 3 dígitos asignada por el **SAT** para que no se repita. ¡Es la cédula de identidad fiscal!
