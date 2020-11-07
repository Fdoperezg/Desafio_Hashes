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

#Este es el método que, dado el hash como parámetro, hace el filtro
def sales_superior (sales)
    sales.each do |k, v| #Recuerda: El hash tiene una key y un value
        if v > 45000 
            print v
            print " " #También podría usar una interpolación: "#{v} "
        end
    end
    print "\n"
end

sales_superior(sales)