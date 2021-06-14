
<%@page import="logica.logica_distrito"%>
<%@page import="datos.distrito"%>
<%
    
    String capsula_provincia = request.getParameter("cmbprovincia"); 
    
    
    
                    distrito temp1=new distrito();
                    logica.logica_distrito con2=new logica_distrito();
                    con2.consultar(capsula_provincia);
                   
                    
%>
<select name="cmbdistrito">
    <option>SELECCIONAR </option>
   <%
      
       
                    for (int i = 0; i < logica_distrito.logica_distrito.size(); i++) {
                        temp1=(distrito)logica_distrito.logica_distrito.get(i);    
                        
                   
                %>
                <option value="<%=temp1.getId_distrito()%>" ><%=temp1.getDesdist() %></option>
                <% }%>
       

</select>
           