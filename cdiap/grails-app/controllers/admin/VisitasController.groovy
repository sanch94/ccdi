package admin

class VisitasController {

    def index() {/*
       if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/
        def res=Visitas.findAll("from Visitas as c, Area as b, Usuario as a where c.ar=b and c.usu=a order by c.id")
    	return [en:res]
     }
    def create(){/*
    	        if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/
        
      if (request.method=='POST') {

        def p=new Visitas(asunto:params.asu,nacompanantes:params.na,comentario:params.co,ar:params.ar,usu:params.usu,fechadregistro:new Date())
          p.save()
      	redirect(controller:"Visitas",action:"index")//para direccionar
    } 
return [en:Usuario.list(), are:Area.list()]
    }


    /*//////imposible modificar datos de las visitas....................................
    def edit(){
    	/*
       if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/     /*
         return [mod:Visitas.get(params.id),en:Usuario.list()]
    }
    def modificar(){
    	def ped=Visitas.get(params.id)
            if (request.method=='POST') {
            ped.asunto=params.asu
            ped.nacompanantes=params.na
            ped.comentario=params.co
            ped.ar=Area.get(params.ar)
            ped.usu=Usuario.get(params.usu)
            ped.fechadregistro=new Date()
            ped.save()
            redirect(action:"index")           
          }	
    }
*/
    def eliminar(){/*
       if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/

        def resultado=Visitas.get(params.id)      
        resultado.delete()
      } 
}
