package admin

class Visitas {
	String asunto
	Integer nacompanantes
	Date fechadregistro
	String comentario

	static belongsTo = [ar:Area]
	Usuario usu

    static constraints = {
    	asunto nullable:false, blank:false, minSize:0,maxSize:100
    	nacompanantes nullable:true,blank:true, max:21
    	 fechadregistro nullable:false,blank:false
    	 comentario nullable:true, blank:true

    }
}
