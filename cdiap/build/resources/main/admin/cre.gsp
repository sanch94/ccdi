<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <asset:link rel="icon" href="favicon.ico" type="images/x-ico" />
    <title>ccdi Tlaxiaco | ADMINISTRADOR</title>
    <!-- Core CSS - Include with every page -->

    <asset:stylesheet src="bootstrap1.css"/>
    <asset:stylesheet src="font-awesome.css"/>
    <asset:stylesheet src="pace-theme-big-counter.css"/>
    <asset:stylesheet src="style.css"/>
    <asset:stylesheet src="main-style.css"/>
    <asset:stylesheet src="morris-0.4.3.min.css"/>

   </head>
<body>
    <!--  wrapper -->
    <div id="wrapper">
        <!-- navbar top -->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">

            <!-- navbar-header -->

            <div class="navbar-header">
            <h4 class="navbar-text" style="color: rgb(255,255,255);">Centro Coordinador de Desarrollo Indigena | Tlaxiaco</h4>                               
                
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Estas en modo movil</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                
            </div>

          </nav>

        <!-- end navbar top -->

        <!--  page-wrapper -->
<div id="page-wrapper">

<div class="row">
 <!-- Page Header -->
        <div class="col-lg-12">

                    <h4 class="page-header">Crear administrador</h4>

        </div><!--End Page Header -->        

<div class="col-md-4 col-md-offset-4">        
<div class="panel panel-default">
                    <div class="panel-heading">
                        <g:if test="${flash.message}"><li class="grid" style="margin-left: 15px;"><h3 class="panel-title"><a>${flash.message}</a></h3>
                        </li></g:if>
                    </div>
<div class="panel-body"> 
    <div class="table-responsive"> 

    <!--EN CLASES-->
                       <g:form action="cre">
                            <fieldset class="form">
                                <div class="form-group">
                                    <f:field property=" ">Nombre
                                        <g:field class="form-control" name ="minombre" type="text" pattern="^([A-Z]{1}[a-zñáéíóú]{1,24}[ ][a-zñáéíóú]{1,24}*)+" placeholder="Nombre completo" required="true"/>
                                    </f:field>
                                </div>
                                <div class="form-group">
                                    <f:field property=" ">Correo
                                        <g:field class="form-control" name ="micorreo" type="email" placeholder="abc@gmail.com" required="true"/>
                                    </f:field>
                                </div>
                                <div class="form-group">
                                    <f:field property=" ">Contraseña
                                        <g:passwordField class="form-control" name="mipas" value="${myPassword}" placeholder="Contraseña" minlength="5" required=""/>
                                    </f:field>
                                </div>
                            </fieldset><br>
                                


                                <div class="col-xs-6"> 
                                 
                                <fieldset >
                                    <g:submitButton  name="create" class="btn btn-lg btn-success btn-block" value="Guardar"/>
                                </fieldset>
                                </div>


                        </g:form>
                        <g:form >
                        <div class="col-xs-6"> 
                        <fieldset >
                    <a href="javascript:window.history.back()" class="btn btn-lg btn-success btn-block">Cancelar</a>
                        </fieldset>
                        </div>
                        </g:form>
        </div><!-- end table-responsive -->
        </div><!-- end panle-body -->
    </div><!-- end panel-default -->
</div><!-- end col-12 -->
            
            </div><!-- end row -->
        </div><!-- end page-wrapper -->
    </div><!-- wrapper -->
    <asset:javascript src="jquery-1.10.2.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="jquery.metisMenu.js"/>
    <asset:javascript src="pace.js"/>
    <asset:javascript src="siminta.js"/>
    <asset:javascript src="raphael-2.1.0.min.js"/>
    <asset:javascript src="morris.js"/>
    <asset:javascript src="dashboard-demo.js"/>

</body>
</html>