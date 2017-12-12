package admin

class LocalidadController {

    def index() {/*
       if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/
        def res=Localidad.findAll("from Localidad as b, Municipio as a where b.mu=a order by b.id")
    	return [en:res]
     }
    def create(){/*
    	        if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/
        
      if (request.method=='POST') {

        def p=new Localidad(callnoparaje:params.call,nlocalidad:params.nl,mu:params.mu,fehregistro:new Date())
          p.save()
      	redirect(controller:"localidad",action:"index")//para direccionar
    } 
return [en:Municipio.list()]
    }
    def edit(){
    	/*
       if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/     
         return [mod:Localidad.get(params.id),en:Municipio.list()]
    }
    def modificar(){
    	def ped=Localidad.get(params.id)
            if (request.method=='POST') {
            ped.callnoparaje=params.call
            ped.nlocalidad=params.nl
            ped.mu=Municipio.get(params.mu)
            ped.fehregistro=new Date()
            ped.save()
            redirect(action:"index")           
          }	
    }

    def eliminar(){/*
       if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/

        def resultado=Localidad.get(params.id)      
        resultado.delete()
      }  
}
