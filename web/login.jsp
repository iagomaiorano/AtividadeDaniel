<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="header.jsp"%>
    </head>
    <%

        try {
            String user = (String) session.getAttribute("usuario");
            
        } catch (NullPointerException e) {
            session.setAttribute("usuario", "");
            
        }
    %>
    <body class="login">
        <div>
            <a class="hiddenanchor" id="signup"></a>
            <a class="hiddenanchor" id="signin"></a>

            <div class="login_wrapper">
                <div class="animate form login_form">
                    <section class="login_content">
                        <form action="./Logar" method="post">
                            <h1>UniTrocas</h1>
                            <div>
                                <input type="text" name="user" id="user" class="form-control" placeholder="Usuário" required="" />
                            </div>
                            <div>
                                <input type="password" name="senha" id="senha" class="form-control" placeholder="Senha" required="" />
                            </div>
                            <div>
                                <input type="submit" value="Logar"> 
                            </div>

                            <div class="clearfix"></div>

                            <div class="separator">
                                <p class="change_link">Novo no site?
                                    <a href="#signup" class="to_register"> Criar uma nova conta </a>
                                </p>

                                <div class="clearfix"></div>
                                <br />

                                <div>
                                    <h1><i class="fa fa-mortar-board"></i> Sistema de Trocas - Uninove</h1>
                                    <p>Sistema criado por alunos do curso de Ciência da Computação.</p>
                                </div>


                            </div>
                        </form>
                        <%session.setAttribute("user", "Daniel");%>
                    </section>
                </div>

                <div id="register" class="animate form registration_form">
                    <section class="login_content">
                        <form action="./Usuario" method="post">
                            <h1>Crie sua conta!</h1>
                            <input type="hidden" name="funcao" id="funcao" value="cadastrar"/> 
                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                                            <input type="text" id="nome" name="nome" class="form-control has-feedback-left" id="inputSuccess2" placeholder="Nome">
                                            <span class="fa fa-user form-control-feedback left" aria-hidden="true"></span>
                                        </div>

                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                                            <input type="text" id="RA" name="RA" class="form-control" placeholder="RA">
                                            <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                        </div>

                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                                            <input type="text" class="form-control has-feedback-left" id="email" name ="email" placeholder="E-mail">
                                            <span class="fa fa-envelope form-control-feedback left" aria-hidden="true"></span>
                                        </div>

                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                                            <input type="text" class="form-control" id="telefone" name ="telefone" placeholder="Telefone">
                                            <span class="fa fa-phone form-control-feedback right" aria-hidden="true"></span>
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                                            <select class="form-control">
                                                <option>Unidade</option>
                                                <option>Memorial</option>
                                                <option>Vergueiro</option>
                                                <option>Vila Prudente</option>
                                                <option>Vila Maria</option>
                                                <option>Santo Amaro</option>
                                            </select>
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                                            <input type="text" class="form-control" id="curso" name ="curso" placeholder="Curso">
                                            <span class="fa fa-graduation-cap form-control-feedback right" aria-hidden="true"></span>
                                        </div>   
                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                                            <input type="password" class="form-control" id="senha" name="senha" placeholder="Senha">
                                            <span class="fa fa-key form-control-feedback right" aria-hidden="true"></span>
                                        </div>   
                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                                            <input type="password" class="form-control" id="csenha" name="csenha" placeholder="Confirmar senha">
                                            <span class="fa fa-key form-control-feedback right" aria-hidden="true"></span>
                                        </div>
                            <div>
                                <input type="submit" value="Cadastrar"> 
                            </div>

                            <div class="clearfix"></div>

                            <div class="separator">
                                <p class="change_link">Lembrou seu cadastro?
                                    <a href="#signin" class="to_register"> Voltar para o login </a>
                                </p>

                                <div class="clearfix"></div>
                                <br />

                                <div>
                                    <h1><i class="fa fa-mortar-board"></i> Sistema de Trocas - Uninove</h1>
                                    <p>Sistema criado por alunos do curso de Ciência da Computação.</p>
                                </div>
                            </div>
                        </form>
                    </section>
                </div>
            </div>
        </div>
    </body>
</html>
