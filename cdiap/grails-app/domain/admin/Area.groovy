package admin

class Area {
String nombarea
String imagen
String acronimo
String nombprog
Date fechareg

	static hasMany = [visit:Visitas]
	static belongsTo = [encarg:Encargado]

    static constraints = {

    	nombarea nullable:false, blank:false, minSize:0,maxSize:150
    	imagen nullable:false,blank:false
    	acronimo nullable:true, blank:true, maxSize:20
    	nombprog nullable:true, blank:true, maxSize: 150
    	fechareg nullable:false, blank:false
    }
}
