<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="pt-BR">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="description" content="Banho e Tosa">
	    <meta name="author" content="Milton Reis">
	    <title>Bicho e Capricho</title>							
	    
		
		<!-- core CSS -->
	    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
	    <link href="resources/css/font-awesome.min.css" rel="stylesheet">
	    <link href="resources/css/animate.min.css" rel="stylesheet">
	    <link href="resources/css/prettyPhoto.css" rel="stylesheet">
	    <link href="resources/css/main.css" rel="stylesheet">
	    <link href="resources/css/responsive.css" rel="stylesheet">
	    
	    <link rel="shortcut icon" href="resources/images/ico/favicone.ico">
	    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="resources/images/ico/apple-touch-icon-144-precomposed.png">
	    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="resources/images/ico/apple-touch-icon-114-precomposed.png">
	    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="resources/images/ico/apple-touch-icon-72-precomposed.png">
	    <link rel="apple-touch-icon-precomposed" href="resources/images/ico/apple-touch-icon-57-precomposed.png">
	    
	</head>
	<body class="homepage">	
		<c:import url="/WEB-INF/views/header.jsp" />
		
		<section id="main-slider" class="no-margin">
		    <div class="carousel slide">
		        <ol class="carousel-indicators">
		            <li data-target="#main-slider" data-slide-to="0" class="active"></li>            
		        </ol>
		        <div class="carousel-inner">
		            <div class="item active" style="background-image: url(resources/images/slider/backg1.jpg)">
		                <div class="container">
		                    <div class="row slide-margin">
		                        <div class="col-sm-6">
		                            <div class="carousel-content">
		                                <h1 class="animation animated-item-1">Venha conhecer os nossos serviços, teremos a maior satisfação em atende-los </h1>
		                                <h2 class="animation animated-item-2">Temos uma equipe capacitada com os melhores cursos que aprimoram o trabalho e entregam o melhor resultado para o seu amigo...</h2>
		                                <a class="btn-slide animation animated-item-3" href="#">Mais</a>
		                            </div>
		                        </div>
		                        <div class="col-sm-6 hidden-xs animation animated-item-4">
		                            <div class="slider-img">                              
		                            </div>
		                        </div>
		                    </div>
		                </div>
		            </div><!--/.item-->                       
		        </div><!--/.carousel-inner-->
		    </div><!--/.carousel-->
		    <a class="prev hidden-xs" href="#main-slider" data-slide="prev">
		        <i class="fa fa-chevron-left"></i>
		    </a>
		    <a class="next hidden-xs" href="#main-slider" data-slide="next">
		        <i class="fa fa-chevron-right"></i>
		    </a>
		</section><!--/#main-slider-->
		
		<section id="services" class="service-item">
			<div class="container">
		           <div class="center wow fadeInDown">
		               <h2>Nossos Serviços</h2>
		               <p class="lead">Temos profissionais que tem paixão em lidar com animais, com esse sentimento 
		                   <br>fazemos todo o trabalho com o maior amor e carinho</p>
		           </div>
		
		           <div class="row">
		
		               <div class="col-sm-6 col-md-4">
		                   <div class="media services-wrap wow fadeInDown">
		                       <div class="pull-left">
		                           <img class="img-responsive" src="resources/images/services/services1.png">
		                       </div>
		                       <div class="media-body">
		                           <h3 class="media-heading">Banho</h3>
		                           <p>Realizamos o Banho com os melhores produtos do mercado</p>
		                       </div>
		                   </div>
		               </div>
		
		               <div class="col-sm-6 col-md-4">
		                   <div class="media services-wrap wow fadeInDown">
		                       <div class="pull-left">
		                           <img class="img-responsive" src="resources/images/services/services2.png">
		                       </div>
		                       <div class="media-body">
		                           <h3 class="media-heading">Tosa</h3>
		                           <p>Utilizamos maquinas e ferramentas de altissima qualidades</p>
		                       </div>
		                   </div>
		               </div>
		
		               <div class="col-sm-6 col-md-4">
		                   <div class="media services-wrap wow fadeInDown">
		                       <div class="pull-left">
		                           <img class="img-responsive" src="resources/images/services/services3.png">
		                       </div>
		                       <div class="media-body">
		                           <h3 class="media-heading">Serviço de Delivery</h3>
		                           <p>Temos profissionais que buscam e entregam seu amigo com a maior segurança e conforto</p>
		                       </div>
		                   </div>
		               </div>  
		
		               <div class="col-sm-6 col-md-4">
		                   <div class="media services-wrap wow fadeInDown">
		                       <div class="pull-left">
		                           <img class="img-responsive" src="resources/images/services/services4.png">
		                       </div>
		                       <div class="media-body">
		                           <h3 class="media-heading">Espaço de Espera</h3>
		                           <p>Em nosso estabelecimento possui espaço para que o cliente visualize o banho de seu amigo</p>
		                       </div>
		                   </div>
		               </div>
		
		               <div class="col-sm-6 col-md-4">
		                   <div class="media services-wrap wow fadeInDown">
		                       <div class="pull-left">
		                           <img class="img-responsive" src="resources/images/services/services5.png">
		                       </div>
		                       <div class="media-body">
		                           <h3 class="media-heading">Tosa na Tesoura</h3>
		                           <p>Para que seu amigo fique ainda mais bonito, oferecemos tosa com tesoura</p>
		                       </div>
		                   </div>
		               </div>
		
		               <div class="col-sm-6 col-md-4">
		                   <div class="media services-wrap wow fadeInDown">
		                       <div class="pull-left">
		                           <img class="img-responsive" src="resources/images/services/services6.png">
		                       </div>
		                       <div class="media-body">
		                           <h3 class="media-heading">Hotel amigo</h3>
		                           <p>Oferecemos serviço de hospedagem para seu amigo</p>
		                       </div>
		                   </div>
		               </div>                                                
		           </div><!--/.row-->
		    </div><!--/.container-->
		</section><!--/#services-->

		<section id="realizados" class="service-item">
		   <div class="container">
		        <div class="center wow fadeInDown">
		            <h2>Serviços Realizados</h2>
		            <p class="lead">Segue alguns de nossos serviços</p>
		        </div>
		
		        <div class="row">
		
		            <div class="col-sm-6 col-md-4">
		                <div class="media services-wrap wow fadeInDown">
		                    <div class="pull-left">
		                        <img class="img-responsive" src="resources/images/realizados/realizado1.png">
		                    </div>
		                </div>
		            </div>
		
		            <div class="col-sm-6 col-md-4">
		                <div class="media services-wrap wow fadeInDown">
		                    <div class="pull-left">
		                        <img class="img-responsive" src="resources/images/realizados/realizado2.png">
		                    </div>                        
		                </div>
		            </div>
		
		            <div class="col-sm-6 col-md-4">
		                <div class="media services-wrap wow fadeInDown">
		                    <div class="pull-left">
		                        <img class="img-responsive" src="resources/images/realizados/realizado3.png">
		                    </div>                        
		                </div>
		            </div>  
		
		            <div class="col-sm-6 col-md-4">
		                <div class="media services-wrap wow fadeInDown">
		                    <div class="pull-left">
		                        <img class="img-responsive" src="resources/images/realizados/realizado4.png">
		                    </div>                        
		                </div>
		            </div>
		
		            <div class="col-sm-6 col-md-4">
		                <div class="media services-wrap wow fadeInDown">
		                    <div class="pull-left">
		                        <img class="img-responsive" src="resources/images/realizados/realizado5.png">
		                    </div>                        
		                </div>
		            </div>
		
		            <div class="col-sm-6 col-md-4">
		                <div class="media services-wrap wow fadeInDown">
		                    <div class="pull-left">
		                        <img class="img-responsive" src="resources/images/realizados/realizado6.png">
		                    </div>                        
		                </div>
		            </div>                                                
		        </div><!--/.row-->
		    </div><!--/.container-->
		</section><!--/#services-->

		<section id="content">
		    <div class="container">
		        <div class="row">
		            <div class="col-xs-12 col-sm-8 wow fadeInDown">
		               <div class="tab-wrap"> 
		                    <div class="media">
		                        <div class="parrent pull-left">
		                            <ul class="nav nav-tabs nav-stacked">
		                                <li class=""><a href="#tab1" data-toggle="tab" class="analistic-01">Missão</a></li>
		                                <li class="active"><a href="#tab2" data-toggle="tab" class="analistic-02">Visão</a></li>
		                                <li class=""><a href="#tab3" data-toggle="tab" class="tehnical">Valores</a></li>		                                
		                            </ul>
		                        </div>
		
		                        <div class="parrent media-body">
		                            <div class="tab-content">
		                                <div class="tab-pane fade" id="tab1">
		                                    <div class="media">
		                                       <div class="pull-left">
		                                            <img class="img-responsive" src="resources/images/tab1.png">
		                                        </div>
		                                        <div class="media-body">
		                                             <h2>Missão</h2>
		                                             <p>"Oferecer atendimento capacitado e de qualidade, cuidando com respeito, carinho e dedicação, visando sempre atender nossos clientes de forma diferenciada e com profissionalismo."</p>				                                             
		                                        </div>
		                                    </div>
		                                </div>
		
		                                 <div class="tab-pane fade active in" id="tab2">
		                                    <div class="media">
		                                       <div class="pull-left">
		                                            <img class="img-responsive" src="resources/images/tab2.png">
		                                        </div>
		                                        <div class="media-body">
		                                             <h2>Visão</h2>
		                                             <p>"Ser reconhecida através da excelência em nossos serviços e inovação constante da nossa empresa.."</p>
		                                        </div>
		                                    </div>
		                                </div>
		
		                                 <div class="tab-pane fade" id="tab3">
		                                    <div class="media">
		                                       <div class="pull-left">
		                                            <img class="img-responsive" src="resources/images/tab3.png">
		                                        </div>
		                                        <div class="media-body">
		                                             <h2>Valores</h2>
		                                             <p>"Ética, transparência e honestidade;<br>
		                                                Prestação de serviços de qualidade, priorizando o bem estar animal;<br>
		                                                Atendimento diferenciado e de qualidade, em favor da satisfação do cliente;<br>
		                                                Criatividade para inovar a cada dia;<br>
		                                                Comprometimento em tudo aquilo que nos dispusermos a fazer."</p>               
		                                        </div>
		                                    </div>
		                                </div>		                                 		                                
		                        	</div> <!--/.tab-content--> 
		                        </div> <!--/.media-body--> 
		                    </div> <!--/.media-->     
		                </div><!--/.tab-wrap-->               
		            </div><!--/.col-sm-6-->				            	
		        </div><!--/.row-->
		    </div><!--/.container-->
		</section><!--/#content-->
    		
		<section id="conatcat-info">
		    <div class="container">
		        <div class="row">
		            <div class="col-sm-8">
		                <div class="media contact-info wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
		                    <div class="pull-left">
		                        <i class="fa fa-phone"></i>
		                    </div>
		                    <div class="media-body">
		                        <h2>Tem alguma duvida ? Entre em contato conosco</h2>
		                        <p>Se você tiver alguma duvida, entre em contato para esclarecimento pelos telefones <br>19 3504-1851 <br>19 99242-4364 <br>19 99258-1275</p>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div><!--/.container-->    
		</section><!--/#conatcat-info-->    
  		
		<c:import url="/WEB-INF/views/footer.jsp" />	
		
		<!-- core Script -->
		<script type="text/javascript" src="resources/js/jquery.js"></script>
	    <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	    <script type="text/javascript" src="resources/js/jquery.prettyPhoto.js"></script>
	    <script type="text/javascript" src="resources/js/jquery.isotope.min.js"></script>
	    <script type="text/javascript" src="resources/js/main.js"></script>
	    <script type="text/javascript" src="resources/js/wow.min.js"></script>
	    
	</body>
</html>