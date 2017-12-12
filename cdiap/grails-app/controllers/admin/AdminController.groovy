package admin

class AdminController {

    def index() {

             if (session.u!='admin') {
        redirect(controller:"admin",action:"logeo")           
        }
   }
    def logeo(){
       session.u=null//cerrar todas las sesiones para emparedar las contraseñas
              def dato=Admin.list()

/*              if ((dato)&&(dato.id[0]<1)) {
            
                 if (p) {
                              session.u='admin'
                              redirect(controller:"admin",action:"index")
                            }else{
                            flash.message="no se encontraron coincidencias"
                            redirect(controller:"admin",action:"logeo")
                            } 
        	

          }*/
            if((dato)&&(dato.id[0]>1)){
            render(view:"/index")
            
            }

            if (dato){ 
            if (request.method=='POST'){
                   def p=Admin.findByCorreoAndContrasena(params.micorreo,params.mipas.encodeAsMD5())//agregar .encodeAsMD5()
                  if (p) {
                              session.u='admin'
                              redirect(controller:"admin",action:"index")
                            }else{
                            flash.message="no se encontraron coincidencias"
                            redirect(controller:"admin",action:"logeo")
                            }                          
               }
             }else{redirect(controller:"admin",action:"cre")}            
          
    }
    def logout(){
        session.u=null
       // redirect(view:"")
       render(view:"/index")
    }

    def cre(){
 session.u=null//cerrar todas las sesiones para emparedar las contraseñas
      def dato=Admin.list()
      if ((!dato)&&(dato.id[0]==null)) {

      if (request.method=='POST') {
    def c=new Admin(nombre:params.minombre,correo:params.micorreo,contrasena:params.mipas.encodeAsMD5(),fecharegistro:new Date())
          c.save()
         redirect (controller:"admin",action:"logeo")//para direccionar
            }

            }else{flash.message="ya hay un administrador, favor de logearse "
          redirect (controller:"admin",action:"logeo")}

    }
    def edit(){
        session.u=null//cerrar todas las sesiones para emparedar las contraseñas
         def ped=Admin.get(1)       
         
        if (request.method=='POST') {
            if (ped.contrasena==params.contanter.encodeAsMD5()) {            
            ped.nombre=params.nomb
            ped.correo=params.cor
            ped.contrasena=params.contnueva.encodeAsMD5()
            ped.fecharegistro=new Date()
            ped.save()
            redirect(action:"logeo")
            }else{flash.message="no se ha podido modificar: intente de nuevo"}
           
          }
          [mod:ped]     
      }
}
