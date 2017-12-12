package admin

class GraficasController {

    def index() { 


    }
    def general() {
      /*if (session.u=="admin") { debe estar sin restricciones
        redirect(controller:"admin",action:"logeo")
        }*/
       //def res=Productos.getAll(4,1)//para mostar todos los que estan e el parametro
        //def cate=Categorias.findByNombreCate("Dulces")
        //def res=cate ? Productos.findAllByCat(cate) : []
        //render(res.nombreProducto)        
       
       /*if (request.method=='POST') {
              def res=Productos.findAllByNombreProductoLike(params.letra+"%")
            // render(params.buscar+"%")
       //  

          [bus:res]
       }
       else{
            render ("no valido")
       }*/

        //PARA LA FECHA
        //if (request.method=='POST') {
           // def fec=new Date("07/12/2016")
        //def resultado=Productos.findAllByFechasolLessThan(params.myDate)
        //def resultado=Productos.findAllByFechasolGreaterThan(params.myDate)
       //def resultado=Productos.findAllByFechasolBetween(params.myDate,params.myDat)
        //render(resultado.nombreProducto)
        //[bus:resultado]

     }
    def edad() { 


    }
    def sexo() { 


    }
    def area() { 


    }
    def programa() { 



    }
        def municipio() { 
    	
    	
    	
    }
        def distrito() { 
    	
    	
    	
    }
        def cargo() { 
    	
    	
    	
    }
}
