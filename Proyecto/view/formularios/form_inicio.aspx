<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form_inicio.aspx.cs" Inherits="form_inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../js/jquery-3.3.1.min.js"></script>
    <script src="../../js/custom.js"></script>
    <script src="../../js/Validaciones.js"></script>

<%--   <link href="../../css/Inicio.css" rel="stylesheet" />--%>
    <title></title>
</head>
<body onload="nobackbutton();">

    <%--header--%>
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">HomeLunch</h1>
            <p class="lead">Aca encontraras tus mejores sabores.</p>
        </div>
    </div>
    <%--   navbar--%>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Inicio</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-item nav-link active" href="#">HomeLunch<span class="sr-only">(current)</span></a>
                <a class="nav-item nav-link" href="quienesS.aspx">Quienes somos</a>
                <a class="nav-item nav-link" href="contacto.aspx">Contactenos</a>
                <a class="nav-item nav-link disabled" href="#">Nose que poner aca</a>
            </div>
        </div>
        <form class="form-inline">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/view/formularios/form_login.aspx">login</asp:HyperLink></button>
        </form>
    </nav>
    <br />
    <br />
    <br />

    <div class="card-columns">
  <div class="card">
    <img class="card-img-top" src="../../../imagenes/mas.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Card title that wraps to a new line</h5>
      <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
    </div>
  </div>
  <div class="card p-3">
    <blockquote class="blockquote mb-0 card-body">
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
      <footer class="blockquote-footer">
        <small class="text-muted">
          Someone famous in <cite title="Source Title">Source Title</cite>
        </small>
      </footer>
    </blockquote>
  </div>
  <div class="card">
    <img class="card-img-top" src="../../../imagenes/berries-blueberries-bread-708488.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Card title</h5>
      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
    </div>
  </div>
  <div class="card bg-primary text-white text-center p-3">
    <blockquote class="blockquote mb-0">
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat.</p>
      <footer class="blockquote-footer">
        <small>
          Someone famous in <cite title="Source Title">Source Title</cite>
        </small>
      </footer>
    </blockquote>
  </div>
  <div class="card text-center">
    <div class="card-body">
      <h5 class="card-title">Card title</h5>
      <p class="card-text">This card has a regular title and short paragraphy of text below it.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
    </div>
  </div>
  <div class="card">
    <img class="card-img" src="../../../imagenes/burrito-chicken-close-up-461198.jpg" alt="Card image">
  </div>
  <div class="card p-3 text-right">
    <blockquote class="blockquote mb-0">
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
      <footer class="blockquote-footer">
        <small class="text-muted">
          Someone famous in <cite title="Source Title">Source Title</cite>
        </small>
      </footer>
    </blockquote>
  </div>
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Card title</h5>
      <p class="card-text">This is another card with title and supporting text below. This card has some additional content to make it slightly taller overall.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
    </div>
  </div>
</div>

    <%--    foother--%>
    <div class="card">
        <div class="card-header">
            Featured
        </div>
        <div class="card-body">
            <h5 class="card-title">Special title treatment</h5>
            <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
        </div>
    </div>




</body>
<script src="../Scripts/jquery-3.3.1.min.js"></script>
<script src="../Scripts/bootstrap.min.js"></script>
</html>
