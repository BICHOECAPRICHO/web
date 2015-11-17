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