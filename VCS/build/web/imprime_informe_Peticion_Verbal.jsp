<%-- 
    Document   : Informe_Peticion_Verbal
    Created on : 07-ene-2016, 9:25:10
    Author     : lpita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <% String ruta=request.getContextPath(); %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Informe de Petición Verbal</title>
        <script>
            function imprime()
            {
                
                var ruta=document.getElementById("ruta_principal").value; 
                document.getElementById("frm_imprime").action=ruta+"/F_informe_peticion_verbal.jsp";
                document.frm_imprime.submit();
    
            }
        </script>
    </head>
    <body onload="imprime()">
        <form action="" method="POST" id="frm_imprime" name="frm_imprime">
            <input type="hidden" value="<%=ruta%>" id="ruta_principal" name="ruta_principal" />
        </form>
    </body>
</html>
