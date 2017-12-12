package admin

class EncargadoController {

    def index() { 
/*
             if (session.u!='admin') {
        redirect(controller:"admin",action:"logeo")           
        }*/
        def dato=Encargado.list()
        /*def saludo = "Hola mundo" [saludo:saludo]*/
        [d:dato]

    }

    def create(){
    	/*
             if (session.u!='admin') {
        redirect(controller:"admin",action:"logeo")       
        }*/

      if (request.method=='POST') {

      		def dato=Encargado.list()

      if (dato.clavecargo!=params.ccarg) {

    def c=new Encargado(clavecargo:params.ccarg,nombree:params.nom,claveper:params.miclave.encodeAsMD5(),correoe:params.cor,disposion:params.dispo,fechregistro:new Date())
          c.save()
         redirect (controller:"Encargado",action:"index")//para direccionar
            
            }else{flash.message="ya hay un Encargado igual"
          redirect (controller:"admin",action:"index")}

            }

    }
    def eliminar(){
    	/*
             if (session.u!='admin') {
        redirect(controller:"admin",action:"logeo")       
        }*/
    	
        def resultado=Encargado.get(params.id)
        resultado.delete()
        redirect (action:"index")
      
    
    }

    def edit(){
/*
             if (session.u!='admin') {
        redirect(controller:"admin",action:"logeo")           
        }*/                
        	def ped=Encargado.get(params.id)
        if (request.method=='POST') {         
            ped.clavecargo=params.ccarg
            ped.nombree=params.nom
            ped.claveper=params.contnueva.encodeAsMD5()            
            ped.correoe=params.cor
            ped.disposion=params.dispo            
            ped.fechregistro=new Date()
            ped.save()
            redirect(action:"index")           
          }
          [mod:ped]     
      

    }
}