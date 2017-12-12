package admin

class Usuario {

String nombreu
String clave
String curp
String cargo
Date fechaderegistro
Integer tiporegistro
/*[A-Z]{4}[0-9]{6}[HM][A-Z]{2}[B-DF-HJ-NP-TV-Z]{3}[A-Z0-9][0-9]$*/
/* ^[A-Z]{1}[AEIOU]{1}[A-Z]{2}
[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|1[0-9]|2[0-9]|3[0-1])
[HM]{1}
(AS|BC|BS|CC|CS|CH|CL|CM|DF|DG|GT|GR|HG|JC|MC|MN|MS|NT|NL|OC|PL|QT|QR|SP|SL|SR|TC|TS|TL|VZ|YN|ZS|NE)
[B-DF-HJ-NP-TV-Z]{3}
[0-9A-Z]{1}
[0-9]{1}$*/
	static hasMany = [vis:Visitas]
	static belongsTo = [loc:Localidad]

    static constraints = {
    	nombreu nullable:false, blank:false, minSize:0,maxSize:60
    	clave unique:true,nullable:false, minSize:3,maxSize:33
    	curp unique:true,nullable:false, blank:false, minSize:16,maxSize:19/*,matches:"expresionregular"*/
    	cargo nullable:true, blank:true, minSize:0,maxSize:100
    	fechaderegistro nullable:false,blank:false
    	tiporegistro nullable:false,blank:false, minSize:0,maxSize:1
    }
}
