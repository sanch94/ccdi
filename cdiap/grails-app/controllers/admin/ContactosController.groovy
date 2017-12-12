package admin

class ContactosController {

    def index() {/*
                if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/
        return [en:Contactos.list()]
    }
    def create(){/*
    	        if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/
      if (request.method=='POST') {

        def p=new Contactos(telper:params.tel,telmunic:params.tel2,telcaseta:params.tel3,correoper:params.cor1,correomuni:params.cor2,fregistro:new Date())
          p.save()
      redirect(controller:"contactos",action:"index")//para direccionar
    } 
}
    def edit(){/*
       if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/
         return [mod:Contactos.get(params.id)]
    }
def modificar() {/*
                if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/
            def ped=Contactos.get(params.id)
     
        if (request.method=='POST') {
            ped.telper=params.tel
            ped.telmunic=params.tel2
            ped.telcaseta=params.tel3
            ped.correoper=params.cor1
            ped.correomuni=params.cor2
            ped.fregistro=new Date()
            ped.save()
            redirect(action:"index")           
          }
}
    def eliminar(){/*
       if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/

        def resultado=Contactos.get(params.id)      
        resultado.delete()
      }    
}
