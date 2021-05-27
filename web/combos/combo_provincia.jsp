<%-- 
    Document   : combo_provincia
    Created on : 11/11/2020, 10:06:30 PM
    Author     : bryan
--%>

<%@page import="logica.logica_provincia"%>
<%@page import="datos.provincia"%>


<%String capsula_departamento = request.getParameter("cmbdepartamento");
    provincia temp1 = new provincia();
    logica.logica_provincia con2 = new logica_provincia();

    con2.consultar(capsula_departamento);
%>


<select name="cbprovincias">   
    <option value="">SELECCIONAR</option>


    <%
        for (int i = 0; i < logica_provincia.logica_provincia.size(); i++) {
            temp1 = (provincia)logica_provincia.logica_provincia.get(i);
    %>
    <option><%=temp1.getDespro()%></option>


    <% }%>



</select>

