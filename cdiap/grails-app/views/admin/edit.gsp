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

        <!-- navbar side -->
        
        <nav class="navbar-default navbar-static-side" role="navigation">
            <!-- sidebar-collapse -->

                  <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="">
                        <i><img src="${resource(dir:'images',file:'user.jpg')}" alt=""></i>
                    </a>
                    <!-- dropdown user-->
                    <ul class="dropdown-menu dropdown-user">
                    <g:if test="${session.u}">
                    <li class="divider"></li>
                        <li><g:link controller="admin" action="logout"><i class="fa fa-sign-out fa-fw"></i>Cerrar sesion</g:link>
                        </li>
                        <li class="divider"></li>
                        <li><g:link controller="admin" action="index"><i class="fa fa-sign-out fa-fw"></i>Home</g:link></li>
                        <li class="divider"></li>
                        <li><g:link controller="admin" action="edit"><i class="fa fa-sign-out fa-fw"></i>Editar Admin</g:link>
                        </li>
                    </g:if>
                    <g:else>
                    <li class="divider"></li>
                        <li><g:link controller="admin" action="logeo"><i class="fa fa-sign-out fa-fw"></i>Iniciar sesion</g:link>
                        </li>
                    </g:else>

                    </ul>


                    <!-- end dropdown-user -->
                </li>

<g:if test="${session.u}">

            <div class="sidebar-collapse">
                <!-- side-menu -->
                <ul class="nav" id="side-menu">


<!-- .................................aqui van los menus....................................... -->


                </ul>
            </div>
            <!-- end sidebar-collapse -->
</g:if>
</nav>
        <!-- end navbar side -->
        <!--  page-wrapper -->
<div id="page-wrapper">

<div class="row">
 <!-- Page Header -->
        <div class="col-lg-12">

                    <h4 class="page-header">Modificar administrador</h4>

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

<!-- .........................contenido.......................... -->


<g:form action="edit">
    <fieldset class="form">
        <label>Nombre :</label>
        <g:field name ="nomb" type="text" pattern="[a-zA-Z-0-9- ]+"   value="${mod.nombre}"/><br><br>
        <label>Correo:</label>
        <g:field name ="cor"  type="email"  value="${mod.correo}"/><br><br>
        <div class="col-xs-9"> 
        <g:passwordField class="form-control" name="contanter" value="${myPassword}" placeholder="Contraseña Anterior" minlength="5" required=""/>
        </div><br><br>
        <div class="col-xs-9">        
        <g:passwordField class="form-control" name="contnueva" value="${myPassword}" placeholder="Contraseña Nueva" minlength="5" required=""/>
        </div><br><br><br>

    </fieldset>

        <div class="col-xs-6"> 
                                 
             <fieldset class="buttons">
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




<!-- .....................termina contenido................................ -->





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
