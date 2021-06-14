
<%@page import="logica.logica_login"%>
<%@page import="datos.login"%>
<%@page import="datos.trabajador"%>
<%@page import="logica.logica_trabajador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            if (request.getParameter("btnActualizar") != null) {
                logica_trabajador.estado = 2;
            }
            if (request.getParameter("btnActualizar1") != null) {
                logica_login.estado = 3;
            }
        %>
        <%
            trabajador temp = new trabajador();
            logica_trabajador con = new logica_trabajador();

            if (logica_trabajador.estado == 2) {

                temp = new trabajador(
                        Integer.parseInt(request.getParameter("txt_id")),
                        request.getParameter("txt_nombre"),
                        request.getParameter("txt_apellido"),
                        request.getParameter("sexo"),
                        request.getParameter("nacimiento"),
                        request.getParameter("cmbtipoid"),
                        request.getParameter("txt_numero"),
                        request.getParameter("txt_telefono"),
                        //   request.getParameter("txt_registro"),
                        Integer.parseInt(request.getParameter("cmbdistrito")),
                        request.getParameter("txt_nomContacto"),
                        request.getParameter("txt_telContacto"),
                        Integer.parseInt(request.getParameter("cmbpuesto"))
                );
                con.actualizar(temp);
               // response.sendRedirect("crud_trabajador.jsp");
            }
            
            login temp1 = new login();
            logica_login con1 = new logica_login();
            
            if (logica_login.estado == 3) {

                temp1 = new login(Integer.parseInt(request.getParameter("txt_id")),
                        request.getParameter("txt_contrasena")
                );
                con1.actualizar1(temp1);
                response.sendRedirect("crud_trabajador.jsp");
              // out.print(Integer.parseInt(request.getParameter("txt_id")));
              // out.print(request.getParameter("txt_contrasena"));
            }


        %> 
    </body>
</html> 
