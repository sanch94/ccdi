package admin

class UsuarioController {

    def index() {/*
       if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/
        def res=Usuario.findAll("from Usuario as b, Localidad as a where b.loc=a order by b.id")
    	return [en:res]
     }
    def create(){/*
    	        if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/
        
      if (request.method=='POST') {

        def p=new Usuario(nombreu:params.nu,clave:params.cl,curp:params.cu,cargo:params.c,tiporegistro:params.tir,loc:params.loc,fechaderegistro:new Date())
          p.save()
      	redirect(controller:"Usuario",action:"index")//para direccionar
    } 
return [en:Localidad.list()]
    }
    def edit(){
    	/*
       if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/     
         return [mod:Usuario.get(params.id),en:Localidad.list()]
    }
    def modificar(){
    	def ped=Usuario.get(params.id)
            if (request.method=='POST') {
            ped.nombreu=params.nu
            ped.clave=params.cl
            ped.curp=params.cu
            ped.cargo=params.c
            ped.tiporegistro=params.tir
            ped.loc=Localidad.get(params.loc)
            ped.fechaderegistro=new Date()
            ped.save()
            redirect(action:"index")           
          }	
    }

    def eliminar(){/*
       if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/

        def resultado=Usuario.get(params.id)      
        resultado.delete()
      } 
}
