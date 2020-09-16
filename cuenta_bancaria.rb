class Usuario
    def initialize(nombre_del_usuario, numero_de_cuenta)
    @nombre = nombre
    @numero_de_cuenta = numero_de_cuenta
    end 
end 

class CuentaBancaria
    attr_accessor :saldo
    
    def initialize(nombre_banco, numero_de_cuenta, saldo=0)
        @nombre_banco = nombre_banco
        @numero_de_cuenta = numero_de_cuenta
        @saldo = saldo    
    end 

    def transferir(monto, cuenta1)
        saldo_cuenta1 = @saldo + monto
        saldo_cuenta2 = @saldo + monto

        puts "cuenta X transfiere #{monto} recibido #{cuenta1}"
        puts "tu saldo es de #{saldo_cuenta1}"
    end 
end 

cuenta1 = CuentaBancaria.new('Banco santander de camilo', 762899, 0)
cuenta2 = CuentaBancaria.new('Banco de santander cuenta milo', 738239, 5000)

cuenta1.transferir(2500*2, 5000)
puts cuenta2.saldo 