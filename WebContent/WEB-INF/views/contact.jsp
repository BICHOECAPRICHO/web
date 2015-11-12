<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head lang="pt-BR">
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="description" content="Banho e Tosa">
	    <meta name="author" content="Milton Reis">
	    <title> Contact nos| Bicho e Capricho</title>						
	    
		
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
		
		<section id="contact-info">
	        <div class="center">                
	            <h2>Como chegar até nós</h2>
	            <p class="lead">Nosso estabelecimento se encontra na cidade de Hortolândia, verifique a nossa localização</p>
	        </div>
	        <div class="gmap-area">
	            <div class="container">
	                <div class="row">
	                    <div class="col-sm-5 text-center">
	                        <div class="gmap">
	                            <iframe frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3675.6270278330535!2d-47.1927882!3d-22.890232299999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94c8b90c8d3b010f%3A0x1b7647be7a2360c8!2sR.+Jos%C3%A9+Aparecido+Mar%C3%A7al%2C+88+-+Parque+Res.+Maria+de+Lourdes%2C+Hortol%C3%A2ndia+-+SP!5e0!3m2!1spt-BR!2sbr!4v1443663229817" width="600" height="450" frameborder="0" style="border:0" allowfullscreen>
	                            </iframe>
	                        </div>
	                    </div>
	
	                    <div class="col-sm-7 map-content">
	                        <ul class="row">
	                            <li class="col-sm-6">
	                                <address>
	                                    <h5>Loja 1</h5>
	                                    <p>Rua José Aparecido Marçal, 88</p>
	                                    <p>Telefone:
	                                        <br>19 3504-1851 
	                                        <br>19 99242-4364
	                                        <br>19 99258-1275 <br>
	                                    <p>E-mail : bichoecaprichocps@gmail.com</p>
	                                </address>	                                
	                            </li>                            
	                        </ul>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </section>  <!--/gmap_area -->
	
		<section id="contact-page">
	        <div class="container">
	            <div class="center">        
	                <h2>Deixe sua Mensagem</h2>
	                <p class="lead">Envie sua mensagem, assim que possivel iremos responde-los.</p>
	            </div> 
	            <div class="row contact-wrap"> 
	                <div class="status alert alert-success" style="display: none"></div>
	                <form id="main-contact-form" class="contact-form" name="contact-form" method="post" action="sendemail.php">
	                    <div class="col-sm-5 col-sm-offset-1">
	                        <div class="form-group">
	                            <label>Nome *</label>
	                            <input type="text" name="name" class="form-control" required="required">
	                        </div>
	                        <div class="form-group">
	                            <label>Email *</label>
	                            <input type="email" name="email" class="form-control" required="required">
	                        </div>
	                        <div class="form-group">
	                            <label>Telefone </label>
	                            <input type="number" class="form-control">
	                        </div>
	                        <!--div class="form-group">
	                            <label>Company Name</label>
	                            <input type="text" class="form-control">
	                        </div-->                        
	                    </div>
	                    <div class="col-sm-5">
	                        <div class="form-group">
	                            <label>Assunto *</label>
	                            <input type="text" name="subject" class="form-control" required="required">
	                        </div>
	                        <div class="form-group">
	                            <label>Menssagem *</label>
	                            <textarea name="message" id="message" required="required" class="form-control" rows="8"></textarea>
	                        </div>                        
	                        <div class="form-group">
	                            <button type="submit" name="submit" class="btn btn-primary btn-lg" required="required">Enviar Menssagem
	                            </button>
	                        </div>
	                    </div>
	                </form> 
	            </div><!--/.row-->
	        </div><!--/.container-->
	    </section><!--/#contact-page-->	
		
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