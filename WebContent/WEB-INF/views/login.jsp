<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="pt-BR">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="description" content="Banho e Tosa">
	    <meta name="author" content="Milton Reis">
	    <title> Entrar| Bicho e Capricho</title>
	    <meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">						
	    
		
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
			
			<form action="efetuaLogin" method="post">
			
			<section id="login-user">
				<div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
				  <div class="modal-dialog">
				  <div class="modal-content">
				      <div class="modal-header">
				          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				          <h1 class="text-center">Area de Acesso</h1>
				      </div>
				      <div class="modal-body">
				          <form class="form col-md-12 center-block">
				            <div class="form-group">
				              <input type="text" class="form-control input-lg" placeholder="Email" name="login">
				            </div>
				            <div class="form-group">
				              <input type="password" class="form-control input-lg" placeholder="Senha" name="senha">
				            </div>
				            <div class="form-group">
				              <button  class="btn btn-primary btn-lg btn-block">Entrar</button>				              
				              <span class="pull-right"><a href="#">Registrar</a></span><span><a href="#">Precisa de Ajuda?</a></span>
				            </div>
				          </form>
				      </div>
				      <div class="modal-footer">
				          <div class="col-md-12">
				          <button class="btn" data-dismiss="modal" aria-hidden="true">Cancelar</button>
						  </div>	
				      </div>
				  </div>
				  </div>
				</div>
			</section>
			
			</form>
			<c:import url="/WEB-INF/views/footer.jsp" />	
			
			<!-- core Script -->
			<script type="text/javascript" src="resources/js/jquery.js"></script>
		    <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
		    <script type="text/javascript" src="resources/js/jquery.prettyPhoto.js"></script>
		    <script type="text/javascript" src="resources/js/jquery.isotope.min.js"></script>
		    <script type="text/javascript" src="resources/js/main.js"></script>
		    <script type="text/javascript" src="resources/js/wow.min.js"></script>
		    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>		
	</body>
</html>