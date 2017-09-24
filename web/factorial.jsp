<%-- 
    Document   : factorial
    Created on : 23/08/2017, 03:19:10 AM
    Author     : Kervin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Css/factorial.css" rel="stylesheet" type="text/css" >
        <title>JSP Page</title>
    </head>
    <body>
        <%String datos=(String)session.getAttribute("datos");%>
        <h2>Bienvenido <%=datos%></h2>
        <form method="post" action="">
            <label for="campo">Ingrese Número</label>
            <input type="text" name="campo" value="" pattern="^-?[\d]+" title="Sólo números enteros"/>
            <button type="submit">Calcular</button>
        </form>               
        <%
            if(request.getParameter("campo") !=null){                    
                try{
                int factorial=Integer.parseInt(request.getParameter("campo"));                                                
                int valor=1;
                if(factorial>=0){            
                %>                                   
                
                <div>
        <table class="tabla">
            <thead>                           
                <tr>
                    <th>Iteración</th>
                    <th>Expresión</th>
                    <th>Valor</th>
                </tr>                
            </thead>
            <tbody>
                <%if(factorial!=0){%>
                <%for(int i=1;i<=factorial;i++){%>
                <tr>                    
                    <td><%=i%></td>    
                    
                        <td><% 
                                String cadena="1*";
                                valor=1;
                               for(int j=1;j<=i;j++){
                                   cadena+=j+"*";
                                   valor*=j;
                               }
                               cadena=cadena.substring(0,cadena.length()-1);                               
                                %>
                        <%=cadena%></td>
                    <td><%=valor%></td>    
                </tr>                
                <%}%>
                <%}else{%>
                <tr>                    
                    <td>1</td>                        
                    <td></td>
                    <td>1</td>    
                </tr>                
                <%}%>
            </tbody>
        </table>         
        
        <%}
        else{%>
        <center>Error: Digite un numero mayor o igual que 0</center>
        <%}%>
        <%}
            catch(Exception ex){%>
        <center>Error: Digite sólo numeros</center>
        <%}}%>
        </div>
    </body>
</html>
