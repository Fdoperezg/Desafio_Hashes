sales = {
    Enero: 15000,
    Febrero: 22000,
    Marzo: 12000,
    Abril: 17000,
    Mayo: 81000,
    Junio: 13000,
    Julio: 21000,
    Agosto: 41200,
    Septiembre: 25000,
    Octubre: 21500,
    Noviembre: 91000,
    Diciembre: 21000
    }

def filter(hash, parameter) #El método recibe un hash y un parámetro que actúa como filtro
    filtered_sales = {} #En este hash nuevo se almacenará el hash filtrado
    hash.each do |k, v| #Este método recorre las keys y los values
        filtered_sales[k] = v if v >= parameter #Aquí se declara que el hash estará compuesto por los valores mayores entregados al parámetro
    end
    filtered_sales
end

puts filter(sales, ARGV[0].to_i) #De esta forma el usuario entrega el parámetro cuando llama al método