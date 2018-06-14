<!-- page content -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<div class="right_col" role="main">
    <div class="">
        <div class="clearfix"></div>
        <div class="row">
            <div class="col-md-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Produtos Cadastrados </h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                            </li>

                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <table id="example" class="display" style="width:100%">
                            <thead>
                                <tr>
                                    <th>Nome</th>
                                    <th>Marca</th>
                                    <th>Ano</th>
                                    <th>Descricao</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${prod}" var="listProdutos">
                                    <tr>
                                        <td>${listProdutos.nome}</td>
                                        <td>${listProdutos.marca}</td>
                                        <td>${listProdutos.ano}</td>
                                        <td>${listProdutos.descricao}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                            <script type="text/javascript">
                                $(document).ready(function () {
                                    $('#example').dataTable({
                                        "language": {
                                            "url": "dataTables.Portuguese-Brasil.lang"

                                        }
                                    });
                                });
                            </script>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<!-- /page content -->