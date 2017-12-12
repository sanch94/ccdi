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
    <asset:stylesheet src="tooltip.css"/>
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
                        <i><img src="${resource(dir:'images',file:'user.jpg')}"></i>
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

<!--g:if test="${session.u}"-->

            <div class="sidebar-collapse">
                <!-- side-menu -->
                <ul class="nav" id="side-menu">


<!-- .................................aqui van los menus....................................... -->

                    <li>
                        <a href="#"><i class="fa fa-files-o fa-fw"></i>Usuario<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <g:link controller="usuario" action="index">Mis usuarios</g:link>
                            </li>
                            <li>
                                <g:link controller="usuario" action="create">Agregar usuario</g:link>
                            </li>

                        </ul>
                        <!-- second-level-items -->
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Visitas<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <g:link controller="visitas" action="index">Mis visitas</g:link>
                            </li>
                            <li>
                                <g:link controller="visitas" action="create">Agregar visita</g:link>
                            </li>
                        </ul>
                        <!-- second-level-items -->
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-wrench fa-fw"></i>Areas<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <g:link controller="area" action="index">Mis areas</g:link>
                            </li>
                            <li>
                                <g:link controller="area" action="create">Agregar area</g:link>
                            </li>

                        </ul>

                    </li>
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-fw"></i>Programas<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <g:link controller="programa" action="index">Mis programas</g:link>
                            </li>
                            <li>
                                <g:link controller="programa" action="create">Agregar programa</g:link>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-fw"></i>Procedencia<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <g:link controller="localidad" action="index">Mis localidades</g:link>
                            </li>
                            <li>
                                <g:link controller="localidad" action="create">Agregar localidad</g:link>
                            </li>
                        </ul>
                        <ul class="nav nav-second-level">
                            <li>
                                <g:link controller="municipio" action="index">Mis municicpios</g:link>
                            </li>
                            <li>
                                <g:link controller="municipio" action="create">Agregar municipio</g:link>
                            </li>
                        </ul>
                        <ul class="nav nav-second-level">
                            <li>
                                <g:link controller="contactos" action="index">Mis contactos</g:link>
                            </li>
                            <li>
                                <g:link controller="contactos" action="create">Agregar contacto</g:link>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-fw"></i>Encargados<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <g:link controller="encargado" action="index">Mis encargados</g:link>
                            </li>
                            <li>
                                <g:link controller="encargado" action="create">Crear encargado</g:link>
                            </li>
                        </ul>
                    </li>

                </ul>
            </div>
            <!-- end sidebar-collapse -->
<!--/g:if-->
</nav>
        <!-- end navbar side -->
        <!--  page-wrapper -->
 <div id="page-wrapper">

    <div class="row">
                <!-- Page Header -->
        <div class="col-lg-12">

                    <h4 class="page-header">Mis encargados de áreas</h4>

        </div><!--End Page Header -->


<div class="col-lg-12">                   
<div class="panel panel-default">
                        <div class="panel-heading">
                        <g:if test="${flash.message}"><li class="grid" style="margin-left: 15px;"><h3 class="panel-title"><a>${flash.message}</a></h3>
                        </li></g:if>
                             
                        </div>
<div class="panel-body">
    <div class="table-responsive">

    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
        <thead>
            <tr>
                <th>ID</th>
                <th>Clave</th>
                <th>Nombre</th>
                <th>Quitar</th>
                <th>Editar</th>
            </tr>
        </thead>
        <tbody>
        <g:each var="o" in="${d}">
        <tr>
            <td>
                <span class="tip">${o.id}
                    <div class="midiv"></div> 
                    <span>Detalles de este encargado<br/><br/>
                        ID: ${o.id}<br />
                        CLAVE DE CARGO: ${o.clavecargo}<br />
                        NNOMBRE ENCARGADO:<br/> ${o.nombree}<br />
                        CORREO:<br /> ${o.correoe}<br />                        
                        DISPOSICION: <br />
                        <% if(o.disposion==1){%>
                        <%="Disponible"%>
                        <%}else{%>
                        <%="No disponible"%>
                        <%}%><br/>
                        FECHA DE ESTE REGISTRO:<br/>${o.fechregistro}<br />
                    </span>
            </td>
            <td>${o.clavecargo}</td>
            <td>${o.nombree}</td>
            <td><g:link action="eliminar" id="${o.id}" onclick="return confirm('¿Está seguro? Se eliminaran todos los datos referentes a  ${o.nombree}')">
                <img src="${resource(dir:'images',file:'skin/script_delete.png')}"/>
                </g:link>
            </td>
            <td>
                <g:link action="edit" id="${o.id}">
                <img src="${resource(dir:'images',file:'skin/script_edit.png')}"/>
                </g:link>
            </td>

        </tr>
        </g:each>
        </tbody>
    </table>
    </div>
</div>
</div>
</div>
</div>
</div><!-- page-wrapper -->
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
