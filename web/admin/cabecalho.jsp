<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Administrador da livraria
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,600,700,800" rel="stylesheet" />
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
  <!-- Nucleo Icons -->
  <link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="../assets/css/black-dashboard.css?v=1.0.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" />
</head>

<body class=" ">
  <div class="wrapper ">
    <div class="sidebar">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="sidebar-wrapper">
        <div class="logo">
          <a href="../inicial/index.jsp" class="simple-text logo-normal text-center">
            Livraria
          </a>
        </div>
        <ul class="nav">
          <li>
            <a href="./../genero/GeneroWS?acao=list">
              <i class="tim-icons icon-attach-87"></i>
              <p>Genero</p>
            </a>
          </li>
          <li>
            <a href="./../classificacao/ClassificacaoWS?acao=list">
              <i class="tim-icons icon-tag"></i>
              <p>Classificação</p>
            </a>
          </li>
          <li>
            <a href="./../autor/AutorWS?acao=list">
              <i class="tim-icons icon-laptop"></i>
              <p>Autor</p>
            </a>
          </li>
          <li>
            <a href="./../editora/EditoraWS?acao=list">
              <i class="tim-icons icon-caps-small"></i>
              <p>Editora</p>
            </a>
          </li>
          <li>
            <a href="./../livro/LivroWS?acao=list">
              <i class="tim-icons icon-book-bookmark"></i>
              <p>Livro</p>
            </a>
          </li>
          <li>
            <a href="./../admin/AdminWS?acao=list">
              <i class="tim-icons icon-tag"></i>
              <p>Admin</p>
            </a>
          </li>
        </ul>
      </div>
    </div>
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-absolute navbar-transparent   ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle d-inline">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="../inicial/index.jsp">Livraria</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse" id="navigation">
            <ul class="navbar-nav ml-auto ">
              <div class="search-bar input-group">
                <!-- <input type="text" class="form-control" placeholder="Search...">
      <div class="input-group-addon"><i class="tim-icons icon-zoom-split"></i></div> -->
                <button class="btn btn-link" id="search-button" data-toggle="modal" data-target="#searchModal"><i class="tim-icons icon-zoom-split"></i></button>
                <!-- You can choose types of search input -->
              </div>
              <!-- <div class="modal fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="searchModal" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="SEARCH">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <i class="tim-icons icon-simple-remove"></i>
          </button>
        </div>
        <div class="modal-footer">
        </div>
      </div>
    </div>
  </div> -->
              
              <li class="dropdown nav-item">
                <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                  <div class="photo">
                      <img src="../../arquivos/${sessionScope['admin'].endFoto}">
                  </div>
                  <!--<b class="caret d-none d-lg-block d-xl-block"></b>-->
                  <p class="d-lg-none">
                    Log out
                  </p>
                </a>
                <ul class="dropdown-menu dropdown-navbar">
                  <li class="nav-link">
                    <a href="#" class="nav-item dropdown-item">${sessionScope['admin'].nome}</a>
                  </li>
                  <li class="nav-link">
                    <a href="#" class="nav-item dropdown-item">Settings</a>
                  </li>
                  <div class="dropdown-divider"></div>
                  <li class="nav-link">
                    <a href="../admin/AdminWS?acao=sair" class="nav-item dropdown-item">Sair</a>
                  </li>
                </ul>
              </li>
              
            </ul>
          </div>
        </div>
      </nav>
      <div class="modal fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="searchModal" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="SEARCH">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <i class="tim-icons icon-simple-remove"></i>
              </button>
            </div>
            <div class="modal-footer">
            </div>
          </div>
        </div>
      </div>
      <!-- End Navbar -->
      <div class="main-panel">
    <div class="content">
        <div class="row">
            <div class="col-md-12">