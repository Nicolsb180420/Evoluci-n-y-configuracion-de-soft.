
<%@page import="datos.proveedor"%>
<%@page import="logica.logica_proveedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (request.getParameter("btnGuardar") != null) {
                logica_proveedor.estado = 1;
            }
            if (request.getParameter("btnActualizar") != null) {
                logica_proveedor.estado = 2;
            }
        %>
        <%
            proveedor temp = new proveedor();
            logica_proveedor con = new logica_proveedor();

            if (logica_proveedor.estado == 1) {

                temp = new proveedor(request.getParameter("txtrazonsocial"),
                        request.getParameter("txtruc"),
                        request.getParameter("txtdireccion"),
                        request.getParameter("txtemail"),
                        request.getParameter("txttelefono"),
                        Integer.parseInt(request.getParameter("cmbdistrito"))
                );

                con.insertar(temp);
                response.sendRedirect("crud_proveedor.jsp");
             /* out.print(request.getParameter("txtrazonsocial"));
              out.print(request.getParameter("txtruc"));
              out.print(request.getParameter("txtdireccion"));
              out.print(request.getParameter("txtemail"));
              out.print(request.getParameter("txttelefono"));
              out.print(request.getParameter("txtregistro"));
              out.print(Integer.parseInt(request.getParameter("cmbdistrito")));
              */
              

            }
          if (logica_proveedor.estado == 2) {

                temp = new proveedor(
                        Integer.parseInt(request.getParameter("txtid")),
                        request.getParameter("txtrazonsocial"),
                        request.getParameter("txtruc"),
                        request.getParameter("txtdireccion"),
                        request.getParameter("txtemail"),
                        request.getParameter("txttelefono"),
                        Integer.parseInt(request.getParameter("cmbdistrito"))
                );
                con.actualizar(temp);
               response.sendRedirect("crud_proveedor.jsp");
            }


        %> 
    </body> 
</html> 

