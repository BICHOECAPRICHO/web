<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="description" content="Banho e Tosa">
	    <meta name="author" content="Milton Reis">
	    <title> Agenda| Bicho e Capricho</title>
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
						
				<script type="text/javascript">
					function finalizaAgora(id) {
						$.post("finalizaTarefa", {'id' : id}, function(resposta) {				
							$("#tarefa_"+id).html(resposta);								
						});
					}
				</script>
				
				<script type="text/javascript">
					function removerAgora(tarefa) {
						$.post("removeTarefa", {'Tarefa' : tarefa}, function() {				
							$('#removetar_'+id).parent().remove();
						});
					}
				</script>
				
				<section id="content">
				    <div class="container">
				        <div class="row">
				
							<table id="tabelaTarefas" border="1" class="table table-hover">
								<tr>
									<th>Id</th>
									<th>Descrição</th>
									<th>Finalizado?</th>
									<th>Data de finalização</th>
									<th>Excluir</th>			
									<th>Alterar</th>
								</tr>
								<c:forEach items="${tarefas}" var="tarefa">
									<tr id="tarefa_${tarefa.id }" >
										<td>${tarefa.id}</td>
										<td>${tarefa.descricao}</td>
										<c:if test="${tarefa.finalizado eq false}">
											<td>
												<a href="#" onClick="finalizaAgora(${tarefa.id})">
													Finalizar
												</a>
											</td>
										</c:if>
										<c:if test="${tarefa.finalizado eq true}">
											<td>Finalizado</td>
										</c:if>
										<td>
											<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy" />
										</td>
														
													
										<td id='removetar_${tarefa.id}'><a href="#" onClick="removerAgora(${tarefa})">Remover agora!</a></td>								
										<td><a href="mostraTarefa?id=${tarefa.id}">Alterar</a></td>
									</tr>
								</c:forEach>
							</table>
												
						  	<a href="novaTarefa" class="btn btn-info" role="button">Novo</a>				    								    						
				    		<a href="logout" class="btn btn-info" role="button">Sair</a>
						</div>
					</div>
				</section>
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