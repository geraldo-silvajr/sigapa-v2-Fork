<div id="section-container">
    <div class="row" >
        <div class="col-sm-12 col-md-12 col-lg-12" id="pagina-header">
            <h2>Inicial</h2>
            <ol class="breadcrumb">
                <li class="active"><i class="fa fa-tachometer-alt"></i> Inicial</li>
            </ol>
        </div>
    </div>
    <!--FIM pagina-header-->
    <div class="row">
        <div class="col-sm-12 col-md-12 col-lg-12">
            <div class="alert alert-success alert-dismissible fade in" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                Olá <strong><?php echo trim($_SESSION['usuario_sig_cootax']['nome']); ?></strong>, bem-vindo ao <?php echo NAME_PROJECT; ?>.
            </div>
        </div>
        <?php if ($this->checkUser() >= 2) { ?>
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <div class="row">
                            <a href="<?php echo BASE_URL ?>/cadastrar/cooperado" >
                                <div class="col-xs-12">
                                    <i class="fa fa-plus-square  fa-3x pull-left"> </i> 
                                    <div class="font-bold"> Cadastrar</div>
                                    <div>Associado</div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="row">
                            <a href="<?php echo BASE_URL ?>/cadastrar/lucro" >
                                <div class="col-xs-12">
                                    <i class="glyphicon glyphicon-usd fa-3x pull-left"></i>
                                    <div class="font-bold">Cadastrar</div>
                                    <div>Entradas</div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="panel panel-danger">
                    <div class="panel-heading">
                        <div class="row">
                            <a href="<?php echo BASE_URL ?>/cadastrar/despesa" >
                                <div class="col-xs-12">
                                    <i class="glyphicon glyphicon-usd  fa-3x pull-left"></i>                               
                                    <div class="font-bold">Cadastrar</div>
                                    <div>Saídas</div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="panel panel-black">
                    <div class="panel-heading">
                        <div class="row">
                            <a href="<?php echo BASE_URL ?>/cadastrar/investimento" >
                                <div class="col-xs-12">
                                    <i class="glyphicon glyphicon-usd fa-3x pull-left" ></i>
                                    <div class="font-bold">Cadastrar</div>
                                    <div>Investimentos</div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <div class="row">
                            <a href="<?php echo BASE_URL ?>/relatorio/cooperados" >
                                <div class="col-xs-12">
                                    <i class="fa fa-users  fa-3x pull-left"> </i> 
                                    <div class="font-bold"> Relatório</div>
                                    <div>Associado</div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="row">
                            <a href="<?php echo BASE_URL ?>/relatorio/lucros" >
                                <div class="col-xs-12">
                                    <i class="fa fa-clipboard-list fa-3x pull-left"></i>
                                    <div class="font-bold">Relatório</div>
                                    <div>Entradas</div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="panel panel-danger">
                    <div class="panel-heading">
                        <div class="row">
                            <a href="<?php echo BASE_URL ?>/relatorio/despesas" >
                                <div class="col-xs-12">
                                    <i class="fa fa-clipboard-list fa-3x pull-left"></i>                               
                                    <div class="font-bold">Relatório</div>
                                    <div>Saídas</div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="panel panel-black">
                    <div class="panel-heading">
                        <div class="row">
                            <a href="<?php echo BASE_URL ?>/relatorio/investimentos" >
                                <div class="col-xs-12">
                                    <i class="fa fa-clipboard-list fa-3x pull-left" ></i>
                                    <div class="font-bold">Relatório</div>
                                    <div>Investimentos</div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        <?php } else { ?>
            <div class="col-sm-6 col-md-4 col-lg-4">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="row">
                            <a href="<?php echo BASE_URL ?>/relatorio/lucros" >
                                <div class="col-xs-12">
                                    <i class="fa fa-clipboard-list fa-3x pull-left"></i>
                                    <div class="font-bold">Relatório</div>
                                    <div>Lucros</div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4">
                <div class="panel panel-danger">
                    <div class="panel-heading">
                        <div class="row">
                            <a href="<?php echo BASE_URL ?>/relatorio/despesas" >
                                <div class="col-xs-12">
                                    <i class="fa fa-clipboard-list fa-3x pull-left"></i>                               
                                    <div class="font-bold">Relatório</div>
                                    <div>Saídas</div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4">
                <div class="panel panel-black">
                    <div class="panel-heading">
                        <div class="row">
                            <a href="<?php echo BASE_URL ?>/relatorio/investimentos" >
                                <div class="col-xs-12">
                                    <i class="fa fa-clipboard-list fa-3x pull-left" ></i>
                                    <div class="font-bold">Relatório</div>
                                    <div>Investimentos</div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        <?php } ?>
        <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="panel panel-black">
                <div class="panel-heading">
                    <i class="fa fa-calculator fa-3x pull-left"></i>                               
                    <div class="font-bold">Associados</div>
                    <div>Total de Registros</div>
                </div>
                <div class="panel-body">
                    <div class="text-right">3000</div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="panel panel-black">
                <div class="panel-heading">
                    <i class="fa fa-calculator fa-3x pull-left"></i>                               
                    <div class="font-bold">Lucro</div>
                    <div>Valor Total</div>
                </div>
                <div class="panel-body">
                    <div class="text-right">R$ 1.000,00</div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="panel panel-black">
                <div class="panel-heading">
                    <i class="fa fa-calculator fa-3x pull-left"></i>                               
                    <div class="font-bold">Despesa</div>
                    <div>Valor Total</div>
                </div>
                <div class="panel-body">
                    <div class="text-right">R$ 1.000,00</div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="panel panel-black">
                <div class="panel-heading">
                    <i class="fa fa-calculator fa-3x pull-left"></i>                               
                    <div class="font-bold">Investimento</div>
                    <div>Valor Total</div>
                </div>
                <div class="panel-body">
                    <div class="text-right">R$ 1.000,00</div>
                </div>
            </div>
        </div>
    </div>
    <!--FIM .ROW-->
    <div class="row">
        <div class="col-md-6">
            <section class=" panel panel-black">
                <header class="panel-heading">
                    <i class="fa fa-chart-pie fa-3x pull-left" ></i>
                    <h4 class="panel-title font-bold">Associados </h4>
                    <div>Associados Registrados</div>
                </header>
                <article class="panel-body">
                    <canvas id="grafico_tipo_protocolo" width="100%" ></canvas>
                </article>
            </section>
        </div>
        <div class="col-md-6">
            <section class=" panel panel-black">
                <header class="panel-heading">
                    <i class="fa fa-chart-pie fa-3x pull-left" ></i>
                    <h4 class="panel-title font-bold">Associados </h4>
                    <div>Associados Registrados</div>
                </header>
                <article class="panel-body">
                    <canvas id="grafico_tipo_suporte_interno" width="100%"></canvas>
                </article>
            </section>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <section class=" panel panel-black">
                <header class="panel-heading">
                    <i class="fa fa-chart-bar fa-3x pull-left" ></i>
                    <h4 class="panel-title font-bold">Financeiro </h4>
                    <div>Lucro, Despesa e Investimento</div>
                </header>
                <article class="panel-body">
                    <canvas id="grafico_protocolo_objetivo" height="40vh"></canvas>
                </article>
            </section>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <section class="panel panel-black">
                <header class="panel-heading">
                    <i class="fa fa-child  fa-3x pull-left"></i>                    
                    <div class="font-bold">Produção</div>
                    <div>Lista dos produtos produzidos na associção</div>
                </header>
                <article class="panel-body">
                    <?php $cooperados = array('5' => 5); ?>
                    <h5 class="text-right">Total: <?php echo count($cooperados) > 1 ? count($cooperados) . ' registros encontrados' : count($cooperados) . ' registro encontrado' ?>.</h5 >
                    <hr/>
                </article>
                <article class="table-responsive">
                    <table class="table table-striped table-bordered table-hover table-condensed">
                        <tr>
                            <th width="50px">#</th>
                            <th width="200px">Produto</th>
                            <th width="200px">Total de produtores</th>
                            <th>Porcentagem</th>
                        </tr>
                        <tr>
                            <td>01</td>
                            <td>Açai</td>
                            <td>25</td>
                            <td>
                                <div class="progress" style="margin-bottom: 0;">
                                    <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger active" role="progressbar" style="width: 100%; height: 100%;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">100%</div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>02</td>
                            <td>Mamão</td>
                            <td>20</td>
                            <td>
                                <div class="progress" style="margin-bottom: 0;">
                                    <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger active" role="progressbar" style="width: 75%; height: 100%;" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">75%</div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>03</td>
                            <td>Galinha</td>
                            <td>15</td>
                            <td>
                                <div class="progress" style="margin-bottom: 0;">
                                    <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger active" role="progressbar" style="width: 50%; height: 100%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">50%</div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>04</td>
                            <td>Arroz</td>
                            <td>10</td>
                            <td>
                                <div class="progress" style="margin-bottom: 0;">
                                    <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger active" role="progressbar" style="width: 25%; height: 100%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>05</td>
                            <td>Limão</td>
                            <td>5</td>
                            <td>
                                <div class="progress" style="margin-bottom: 0;">
                                    <div class="progress-bar progress-bar-striped progress-bar-animated bg-success active" role="progressbar" style="width: 10%; height: 100%;" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100">10%</div>
                                </div>
                            </td>
                        </tr>
                    </table>
                </article>
            </section>
        </div>
    </div>
</div>
<!-- /#section-container -->

<script src="<?php echo BASE_URL ?>/assets/js/Chart.min.js"></script>
<script src="<?php echo BASE_URL ?>/assets/js/graficos.js"></script>
