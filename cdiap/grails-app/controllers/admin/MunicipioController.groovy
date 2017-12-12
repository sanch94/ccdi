package admin

class MunicipioController {

    def index() {/*
       if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/
        def res=Municipio.findAll("from Municipio as b, Contactos as a where b.contact=a order by b.id")
    	return [en:res]
     }
    def create(){/*
    	        if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/
        
      if (request.method=='POST') {

        def p=new Municipio(nmunicipio:params.nm,presidente:params.pre,contact:params.contact,feregistro:new Date())
          p.save()
      	redirect(controller:"municipio",action:"index")//para direccionar
    } 
return [en:Contactos.list()]
    }
    def edit(){
    	/*
       if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/     
         return [mod:Municipio.get(params.id),en:Contactos.list()]
    }
    def modificar(){
    	def ped=Municipio.get(params.id)
            if (request.method=='POST') {
            ped.nmunicipio=params.nm
            ped.presidente=params.pre
            ped.contact=Contactos.get(params.contact)
            ped.feregistro=new Date()
            ped.save()
            redirect(action:"index")           
          }	
    }

    def eliminar(){/*
       if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/

        def resultado=Municipio.get(params.id)      
        resultado.delete()
      }    
}
