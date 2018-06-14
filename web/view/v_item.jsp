<!-- page content -->
<div class="right_col" role="main">
    <div class="">
        <div class="clearfix"></div>
        <!-- ITEM -->
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Detalhes do Item</h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                            </li>

                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">

                        <div class="col-md-7 col-sm-7 col-xs-12">
                            <div class="product-image">
                                <img src="images/produto-<% request.getParameter("n"); %>.jpg" alt="...">
                            </div>
                            
                        </div>
                        <div class="col-md-5 col-sm-5 col-xs-12" style="border:0px solid #e5e5e5;">
                            <h3 class="prod_title">NOME DO PRODUTO</h3>
                            <p>Descrição: </p>
                            <p>Marca:</p>
                            <p>Ano:</p>
                            <br/><p>Anunciante:</p>
                            <br>
                            <br>
                            <br>
                            <div class="">
                                <button type="button" class="btn btn-default btn-lg">Solicitar Empréstimo</button>
                                <button type="button" class="btn btn-default btn-lg">Solicitar Troca</button>
                            </div>
                        </div>
                        </div>
                        <div class="col-md-12">
                            <div class="" role="tabpanel" data-example-id="togglable-tabs">
                                <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                                    <li role="presentation" class="active"><a href="#tab_content1" class="fa fa-comment"id="home-tab" role="tab" data-toggle="tab" aria-expanded="true"> Comentários</a>
                                    </li>
                                </ul>
                                <div id="myTabContent" class="tab-content">
                                    <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
                                        <div class="form-group">
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <textarea class="resizable_textarea form-control" placeholder="Deixe seu comentário ou dúvida aqui..."></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                   
                
            </div>
        </div>

    </div>
</div>
<!-- /page content -->