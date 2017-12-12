package admin

class Localidad {

String callnoparaje
String nlocalidad
Date fehregistro

	static hasMany = [us:Usuario]
	static belongsTo = [mu:Municipio]

    static constraints = {
    	callnoparaje nullable:true, blank:true, minSize:0,maxSize:120
    	nlocalidad nullable:false, minSize:0,maxSize:60
    	fehregistro nullable:false, blank:false
    }
}
