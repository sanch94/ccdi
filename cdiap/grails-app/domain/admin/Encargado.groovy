package admin

class Encargado {
String clavecargo
String nombree
String claveper
String correoe
Date fechregistro
Integer disposion
	static hasMany = [area:Area]
    static constraints = {
    	clavecargo nullable:false, blank:false, minSize:0, maxSize:12
    	nombree nullable:false,blank:false, minSize:0,maxSize:60
    	claveper unique:true, minSize:0,maxSize:33
    	correoe nullable:true,blank:true, minSize:0,maxSize:100, email:true
    	disposion nullable:false, blank:false, minSize:0, maxSize:1
    }
}
