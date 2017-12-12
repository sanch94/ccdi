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
    <asset:javascript src="jquery-1.12.0.min.js"/>
    <asset:javascript src="Chart.bundle.min.js"/>

 <script type="text/javascript">
    $(document).ready(function(){
        var datos = {
            type: "pie",
            data : {
                datasets :[{
                    data : [
                        5,
                        10,
                        40,
                        12,
                        23,
                    ],
                    backgroundColor: [
                        "#F7464A",
                        "#46BFBD",
                        "#FDB45C",
                        "#949FB1",
                        "#4D5360",
                    ],
                }],
                labels : [
                    "Datos 1",
                    "Datos 2",
                    "Datos 3",
                    "Datos 4",
                    "Datos 5",
                ]
            },
            options : {
                responsive : true,
            }
        };

        var canvas = document.getElementById('chart').getContext('2d');
        window.pie = new Chart(canvas, datos);

        setInterval(function(){
            datos.data.datasets.splice(0);
            var newData = {
                backgroundColor : [
                    "#949FB1",
                    "#4D5360",
                    "#F7464A",
                    "#46BFBD",
                    "#FDB45C",
                ],
                data : [getRandom(), getRandom(), getRandom(), getRandom(), getRandom()]
            };

            datos.data.datasets.push(newData);

            window.pie.update();

        }, 5000);
        function getRandom(){
            return Math.round(Math.random() * 100);
        }
    });
    </script>
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
                        <li><a href="logout"><i class="fa fa-sign-out fa-fw"></i>Cerrar sesion</a></li>
                        <li class="divider"></li>
                        <li><a href="index"><i class="fa fa-sign-out fa-fw"></i>Home</a></li>
                        <li class="divider"></li>
                        <li><a href="edit"><i class="fa fa-sign-out fa-fw"></i>Editar Admin</a></li>
                    </g:if>
                    <g:else>
                    <li class="divider"></li>
                        <li><a href="logeo"><i class="fa fa-sign-out fa-fw"></i>Iniciar sesion</a></li>
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
                                <a href="../usuario/index">Lista</a>
                            </li>
                            <li>
                                <a href="../usuario/create">Agregar</a>
                            </li>

                        </ul>
                        <!-- second-level-items -->
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Visitas<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="../visitas/index">Lista</a>
                            </li>
                            <li>
                                <a href="../visitas/create">Agregar</a>
                            </li>
                        </ul>
                        <!-- second-level-items -->
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-wrench fa-fw"></i>Areas<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="../area/index">Lista</a>
                            </li>
                            <li>
                                <a href="../area/create">Agregar</a>
                            </li>

                        </ul>

                    </li>
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-fw"></i>Programas<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="../programa/index">Listar</a>
                            </li>
                            <li>
                                <a href="../programa/create">Agregar</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-fw"></i>Procedencia<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="../localidad/index">Listar</a>
                            </li>
                            <li>
                                <a href="../localidad/create">Agregar</a>
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

                    <h1 class="page-header">LISTA AREAS</h1>
                    
                </div>

                <!--End Page Header -->
                <div class="col-lg-12">
                   
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             
                        </div>
                        <div class="panel-body">
                 <div class="table-responsive">
                    <div id="canvas-container" style="width:50%;">
        <canvas id="chart" width="500" height="350"></canvas>
    </div>
    <!--EN CLASES-->

</div>
</div>
</div>
</div>
</div>
                  </div>
        <!-- end page-wrapper -->
    </div>
    <!-- wrapper -->
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
