<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="pt-BR">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="description" content="Banho e Tosa">
	    <meta name="author" content="Milton Reis">
	    <title> Adcionar Tarefa| Bicho e Capricho</title>
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
				function buscaCPF(CPF) {

					validarCPF(CPF);
					if(CPF != ""){
						$.post("buscaCPF", {'CPF' : CPF}, function(resposta) {				
							$("#DadosPessoais").html(resposta);								
						});
					}					
				}
			</script>
			
				<div class="jumbotron">
					<div class="container">
						<h1>Agenda</h1>
						<p>Realize o Agendamento do seu amiguinho.</p>
					</div>
				</div>
				
				<div class="container">
			      <div class= "row">
			        <div class="col-sm-4">
			          <div class="panel panel-success">
			            <div class="panel-heading">
			              <h2 class="panel-title">Seu Agendamento</h2>
			            </div>
			            <div class="panel-body">
			              <img src="resources/images/tab2.png" alt="Fuzzy Cardigan" class="img-thumbnail img-responsive hidden-xs">
			              <dl>
								<dt>Dono</dt>
									<dd>Milton Reis</dd>
								<dt>Animal</dt>
									<dd>Thor</dd>
								<dt>Serviço</dt>
									<dd>Banho</dd>
								<dt>Preço</dt>
									<dd>R$ 35,00</dd>
							</dl>
			            </div>
			          </div>
			        </div>
			        <form action="adicionaTarefa" method="post" class="col-sm-8" name="cadAgenda">
			          <div class="row">
			            <fieldset class="col-md-6" id="DadosPessoais">
			              <legend>Dados pessoais</legend>
			              
			              <div class="form-group">
			                <label for="cpf">CPF</label>
			                <input type="text" class="form-control" id="cpf" name="cpf" placeholder="000.000.000-00" autofocus required onblur="buscaCPF(cadAgenda.cpf.value)">
			              </div>			
			
			              <div class="form-group">
			                <label for="nomeCliente">Nome completo</label>
			                <input type="text" class="form-control" id="nomeCliente" name="nomeCliente" required>
			              </div>
			
			              <div class="form-group">
			                <label for="email">Email</label>
			                <input type="email" class="form-control" id="email" name="email" placeholder="email@exemplo.com">
			              </div>
			              <div class="form-group">
								<label for="cep">Cep</label>
								<input type="text" class="form-control" id="cep" name="cep" required>
							</div>
							<div class="form-group">
								<label for="endereco">Endereço</label>
								<input type="text" class="form-control" id="endereco" name="endereco" required>
							</div>
							<div class="form-group">
								<label for="cidade">Cidade</label>
								<input type="text" class="form-control" id="cidade" name="cidade" required>
							</div>
							<div class="form-group">
								<label for="uf">Estado</label>
								<input type="text" class="form-control" id="uf" name="uf" required>
							</div>								              
			
			              <div class="checkbox">
			                <label>
			                  <input type="checkbox" value="sim" name="spam" checked>
			                  Quero receber promoções
			                </label>
			              </div>
			            </fieldset>
			
			            <fieldset class="col-md-6">
			              <legend>Serviço</legend>
			              		<div class="form-group">
									<label for="animal">Animal</label>
									<input type="text" class="form-control" id="animal" name="animal" required>
								</div>
								<div class="form-group">
									<label for="dataAgendamento">Agenda Data</label>
									<input type="date" class="form-control" id="dataAgendamento" name="dataAgendamento" min="2015-01-01">
								</div>
								<div class="form-group">
									<label for="horaAgendamento">Agenda Hora</label>
									<input type="time" class="form-control" id="horaAgendamento" name="horaAgendamento" min="08:00">
								</div>								
								<div class="form-group">
									<label for="servico">Serviço</label>
									<select name="servico" id="servico" class="form-control">
										<option value=""></option>
										<option value="banho">Banho</option>
										<option value="tosa">Tosa</option>
										<option value="banhoetosa">Banho\Tosa</option>
										<option value="tosatesoura">Tosa Tesoura</option>
									</select>													
								</div>
								
								<div class="form-group">
									<label for="descricao">Descrição</label>
									<input type="text" class="form-control" id="descricao" name="descricao" required>
								</div>
								
								<div class="form-group">
									<label for="valor">Valor</label>
									<input type="tel" class="form-control" id="valor" name="valor" required="required" maxlength="15" />
								</div>
			            </fieldset>
			          </div>
			
			          <button type="submit" value="Adicionar" class="btn btn-primary">
			            <span class="glyphicon glyphicon-thumbs-up"></span>
			            Confirmar
			          </button>
			        </form>			        																									  			    			
		    		<a href="limparTarefa" class="btn btn-info" role="button">Limpar</a>				
		    		<a href="listaTarefas" class="btn btn-info" role="button">Voltar</a>
			      </div>
			    </div>
			    				
			<c:import url="/WEB-INF/views/footer.jsp" />	
			
			<!-- core Script -->
			<script type="text/javascript" src="resources/js/jquery.js"></script>
			<script type="text/javascript" src="resources/js/jquery.maskMoney.js"></script>
		    <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
		    <script type="text/javascript" src="resources/js/jquery.prettyPhoto.js"></script>
		    <script type="text/javascript" src="resources/js/jquery.isotope.min.js"></script>
		    <script type="text/javascript" src="resources/js/main.js"></script>
		    <script type="text/javascript" src="resources/js/wow.min.js"></script>
		    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>		
	</body>
</html>