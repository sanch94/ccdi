package admin

class Municipio {
	String nmunicipio
	String presidente
	Date feregistro

	static hasMany = [lo:Localidad]
	static belongsTo=[contact:Contactos]

    static constraints = {
    	nmunicipio blank:false, nullable:false, minSize:0,maxSize:50
    	presidente unique:true, minSize:0,maxSize:50
    	feregistro nullable:false, blank:false
    }
}
