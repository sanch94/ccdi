package admin

class AreaController {

    def index() {/*
    	        if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/
       def res=Area.findAll("from Area as b, Encargado as a where b.encarg=a order by b.id")
        
       [a:res]
          
         }

  def showImage(){
        def imgs=Area.get(params.id)
        File img=new File(servletContext.getRealPath("/imagenes/")+imgs.imagen)
        response.outputStream << img.bytes
        response.outputStream.flush()
    }

    def create(){/*
    	        if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/

        return [en:Encargado.list()]
  }

def guardar(){

      def archivo=request.getFile("myFile")
      if (!archivo.isEmpty()) {
            String directorio="/imagenes/"
            String rutaesp=request.getServletContext().getRealPath(directorio)//rutaesp es una variable 
            if (!new File(rutaesp).exists()){
                new File(rutaesp).mkdir()
            }
            String orgName=archivo.getOriginalFilename()
            String filePath=rutaesp+orgName
            File dest=new File(filePath)
            archivo.transferTo(dest)
          }

      if (request.method=='POST') {

        def p=new Area(nombarea:params.nom,imagen:archivo.getOriginalFilename(),acronimo:params.acro,nombprog:params.nomp,encarg:params.encarg,fechareg:new Date())
          p.save()
      redirect (controller:"area",action:"index")//para direccionar
    } 
}
    def edit(){/*
       if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/
         return [mod:Area.get(params.id), en:Encargado.list()]
    }
def modificar() {
            def ped=Area.get(params.id)           

            def archivo=request.getFile("myFile")
      if (!archivo.isEmpty()) {
//consultamos si existe un archivo al que se le relaciona los datos antes de ser cambiados
            def file=new File(servletContext.getRealPath("/imagenes/")+ped.imagen)
            String orgName=archivo.getOriginalFilename()//obtenemos el nombre de la imagen de la entrada
            if (orgName!=ped.imagen) {//si son diferentes: que elimine el archivo anterior y guarde el nuevo
                
                file.delete()
            String rutaesp=request.getServletContext().getRealPath("/imagenes/")//rutaesp es una variable                                       
            String filePath=rutaesp+orgName
            File dest=new File(filePath)
            archivo.transferTo(dest) 
            }            
          }
     
        if (request.method=='POST') {
            def vare=Encargado.get(params.encarg)
            ped.nombarea=params.nom
            ped.imagen=archivo.getOriginalFilename()
            ped.acronimo=params.acro
            ped.nombprog=params.nomp
            ped.encarg=vare
            ped.fechareg=new Date()
            ped.save()
            redirect(action:"index")           
          }
}
    def eliminar(){/*
       if (session.u!='admin') {
        flash.message="vuelva a iniciar sesion"
        redirect(controller:"admin",action:"logeo")
        }*/

        def resultado=Area.get(params.id)      
        resultado.delete()
         def file=new File(servletContext.getRealPath("/imagenes/")+resultado.imagen)
        file.delete()
        redirect (action:"index")
      }  
}