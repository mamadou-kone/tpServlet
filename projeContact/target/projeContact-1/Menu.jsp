<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>


	<!--Menu Logement-->
	<div class="menuderoulant">
		<button  onclick="redirectToServlet()" class="btnmenu">Nouveau</button>
                <script>
                function redirectToServlet() {
                    // Remplacez "MaServlet" par l'URL de votre servlet
                    window.location.href = "contact.jsp";
                }
                </script>

	
	</div>
	<!--Menu Etablissement-->
	<div class="menuderoulant">
		<button class="btnmenu">Liste</button>
			<div class="elementmenu">
				<a href="NewServlet">Voir la liste </a>
			</div>
	
	</div>
