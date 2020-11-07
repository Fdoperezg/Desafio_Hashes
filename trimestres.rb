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

trimester_sales = []
i = 0
sales.each_slice(3) do |trimester| #Con el método each_slice, se separa el array en bloques definidos por el parámetro/argumento
    trimesterhash = trimester.to_h #Aquí se hace el hash del trimestre convirtiendo cada array a hashes
    trimester_values = trimesterhash.values #Aquí se guarda el valor del hash de cada trimestre en una variable que contenga los valores
    trimester_sales[i] = trimester_values.inject(0) { |sum, venta| sum + venta } #Aquí se define cuánto fue la venta de cada trimestre, sumando la venta de cada mes que compone un trimestre
    i += 1
end

quarters = ["Q1","Q2","Q3","Q4"].zip(trimester_sales).to_h #Con el método zip se juntan las keys y los valores calculados más arriba y se convierte en un hash

puts quarters