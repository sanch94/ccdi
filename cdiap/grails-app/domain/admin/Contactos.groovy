package admin

class Contactos {

String telper
String telmunic
String telcaseta
String correoper
String correomuni
Date fregistro
	//static hasMany = [mun:Municipio]// sin cascada hacia municipio
    static constraints = {
    	
    	telper nullable:true,blank:true, minSize:7,maxSize:11
    	telmunic nullable:true,blank:true, minSize:7,maxSize:11
    	telcaseta nullable:false,blank:false, minSize:7,maxSize:11
    	correoper nullable:true,blank:true, minSize:0,maxSize:100, email:true
    	correomuni nullable:true,blank:true, minSize:0,maxSize:100, email:true
    	fregistro nullable:false, blank:false
    }
}
