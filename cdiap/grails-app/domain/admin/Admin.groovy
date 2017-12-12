package admin

class Admin {
	String nombre
	String correo
	String contrasena
	Date fecharegistro
    static constraints = {
    
    	nombre nullable:false, blank:false, maxSize:60
    	correo nullable:false, blank:false, maxSize:30
    	contrasena unique:true,nullable:false,blank:false, maxSize:33
        fecharegistro nullable:false,blank:false
    	
    }
}
