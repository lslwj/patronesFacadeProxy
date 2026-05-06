class GestionUsuarios
    def inicializar_usuarios : Array
        usuarios_array = ["User 1", "User 2", "User 3", "User 4", "User 5"]
        return usuarios_array
    end

    def mostrar_usuarios(usuarios_array : Array)
        i = 0
        loop do
            puts usuarios_array[i]
            i += 1
            break if i == usuarios_array.size
        end
    end
end

class GestionStaff
    def inicializar_staff : Array
        staff_array = ["Staff 1", "Staff 2", "Staff 3"]
        return staff_array
    end

    def mostrar_staff(staff_array : Array)
        i = 0
        loop do 
            puts staff_array[i]
            i += 1
            break if i == staff_array.size
    end
end

class GestionPedidos
    def inicializar_pedidos : Array
        pedidos_array = ["00001", "00002", "00003", "00004", "00005", "00006", "00007"]
    end
    def mostrar_pedidos_recientes(pedidos_array : Array)
        i = 0
        loop do
          puts pedidos_array[i]
          i += 1
          break if i == pedidos_array.size
        end
    end
end

class SistemaFachada
  def initialize
    @gestion_usuarios = GestionUsuarios.new
    @gestion_staff = GestionStaff.new
    @gestion_pedidos = GestionPedidos.new  
  end

  def iniciar
    usuarios_array = @gestion_usuarios.inicializar_usuarios
    staff_array = @gestion_staff.inicializar_staff
    pedidos_array = @gestion_pedidos.inicializar_pedidos

    @gestion_usuarios.mostrar_usuarios(usuarios_array)
    @gestion_staff.mostrar_staff(staff_array)
    @gestion_pedidos.mostrar_pedidos_recientes(pedidos_array)
  end
end

SistemaFachada.new.iniciar
end