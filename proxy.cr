abstract class Documento
    abstract def acceder(rol_usuario : String) : String
end

class DocumentoReal < Documento
    def acceder(rol_usuario : String) : String
        "Cargando archivo..."
    end
end

class ProxyDocumento < Documento
    @documento_real : DocumentoReal?

    def acceder(rol_usuario : String) : String
        if tiene_permiso (rol_usuario)
            @documento_real ||= DocumentoReal.new
            @documento_real.not_nil!.acceder(rol_usuario)
        else
            "Error. Permiso denegado"
        end
    end
    
    private def tiene_permiso(rol : String) : Bool
        rol == "Coordinador" || rol == "Profesor"
    end
end

class Main
    def initialize
        proxy = ProxyDocumento.new
        puts proxy.acceder("Estudiante")
        puts proxy.acceder("Coordinador")
    end
end

Main.new


