<script type="text/javascript">
	
	$(document).ready(function () {     
		if("${nomeCliente}" == ''){
	        $('#nomeCliente').attr("readonly", false);
	        $('#email').attr("readonly", false);
	        $('#cep').attr("readonly", false);
	        $('#endereco').attr("readonly", false);
	        $('#cidade').attr("readonly", false);
	        $('#uf').attr("readonly", false);	        
		}		
		if("${nomeCliente}" != ''){
	        $('#nomeCliente').attr("readonly", true);
	        $('#email').attr("readonly", true);
	        $('#cep').attr("readonly", true);
	        $('#endereco').attr("readonly", true);
	        $('#cidade').attr("readonly", true);
	        $('#uf').attr("readonly", true);
		}               
    }); 

</script>

<legend>Dados pessoais</legend>
	              
	<div class="form-group">
		<label for="cpf">CPF</label>
	  	<input type="text" class="form-control" id="cpf" name="cpf" placeholder="000.000.000-00" autofocus required onblur="buscaCPF(cadAgenda.cpf.value)" 
	  	value="${cpf}">
	</div>			
	
	<div class="form-group">
		<label for="nomeCliente">Nome completo</label>
		<input type="text" class="form-control" id="nomeCliente" name="nomeCliente" placeholder="Joao Silva" required 
		value="${nomeCliente}">
	</div>
	
	<div class="form-group">
		<label for="email">Email</label>
		<input type="email" class="form-control" id="email" name="email" placeholder="email@exemplo.com"
		value="${email}" readonly="readonly">
	</div>
	          
	<div class="form-group">
		<label for="cep">Cep</label>
		<input type="text" class="form-control" id="cep" name="cep" required
		value="${cep}" readonly="readonly">
	</div>
	
	<div class="form-group">
		<label for="endereco">Endereço</label>
		<input type="text" class="form-control" id="endereco" name="endereco" required
		value="${endereco}" readonly="readonly">
	</div>
	
	<div class="form-group">
		<label for="cidade">Cidade</label>
		<input type="text" class="form-control" id="cidade" name="cidade" required
		value="${cidade}" readonly="readonly">
	</div>
	
	<div class="form-group">
		<label for="uf">Estado</label>
		<input type="text" class="form-control" id="uf" name="uf" required
		value="${uf}" readonly="readonly">
	</div>								              
	
	<div class="checkbox">
		<label>
			<input type="checkbox" value="sim" name="spam" checked>
			Quero receber promoções
		</label>
	</div>