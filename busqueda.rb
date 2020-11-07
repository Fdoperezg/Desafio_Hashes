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

ARGV.each do |search| 
    found = sales.invert[search.to_i] #Con este método relacionas de forma invertida la key con el value para que entregar un valor y te de un mes.
    if found
        puts "#{found} "
    else
        puts "no encontrado "
    end
end
