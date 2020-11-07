#Este es el hash
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

#Este es el método
def month_superior(sales)
            sales.each do |k, v|
                if v > 45000
                    print "#{k} "
                end
        end
end

month_superior(sales)