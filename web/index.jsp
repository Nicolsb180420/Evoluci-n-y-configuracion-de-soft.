<%-- 
    Document   : index
    Created on : 23/10/2020, 04:09:38 PM
    Author     : bryan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" type="text/css" href="diceno/css/bootstrap.min.css">


        <link rel="stylesheet" type="text/css" href="diceno/css/menu_principal.css">

        <%-- despegable movivble y adaptable--%>


        <%-- problemas :C borra esto amigo o no ? 
       <link rel="stylesheet" href="../diceno/css/css_des/app.css"/> 
        --%>


        <link href="diceno/css/navbar.css" rel="stylesheet">

        <script src="diceno/js/jquery-3.5.1.min.js"></script>
        <script src="diceno/js/popper.min.js"></script>
        <script src="diceno/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="diceno/css/css_des/pure-drawer.css"/>

        <script src="diceno/js/jquery-3.5.1.slim.min.js"></script>
        <script src="diceno/js/bootstrap.bundle.min.js"></script>
        <%--  categoria--%>

        <link rel="stylesheet" type="text/css" href="diceno/css/slick/slick.css">
        <link rel="stylesheet" type="text/css" href="diceno/css/slick/slick-theme.css">


        <script src="diceno/js/jquery-2.2.0.min.js" type="text/javascript"></script>
        <script src="diceno/css/slick/slick.js" type="text/javascript" charset="utf-8"></script>
        <link href="diceno/css/navbar-top-fixed.css" rel="stylesheet">     

        <%--caja de texto--%>

        <link rel="stylesheet" href="diceno/css/caja_text.css">
        <link rel="stylesheet" href="diceno/css/categorias.css">

        
    </head>
    <body>
       <%
       
           
           
              HttpSession sesion = request.getSession();
                                sesion.setAttribute("cliente_id","NN");
                                sesion.setAttribute("cliente_nombre", "NN");
                                sesion.setAttribute("cliente_apellido", "NN");
                        
             //      request.getRequestDispatcher("menu_principal/login.jsp?accion=0").forward(request, response);            
                    response.sendRedirect("menu_principal/login.jsp");
       
       %>


    </body>
</html>
