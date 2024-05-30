
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>JSP Page</title>
    </head>
    <body>
       <header>
       
    </header>
    <section>
        <article>
            <form action="test" method="post">
                <fieldset>
                    <legend>Nouvelle Personne</legend>
                    <label>Nom</label>
                    <input type="text" name="nom" id="nom" required size="40"/>
                    <p><br><br>
                    <label>Prénom</label>
                    <input type="text" name="prenom" id="prenom" required size="20"/>
                    <p><br><br>
                    <label>Téléphone</label>
                    <input type="text" name="telephone" id="telephone" required size="20"/>
                    <p><br><br>
                    <label>Email</label>
                    <input type="text" name="email" id="email" required size="20"/>
                    <p><br><br>
                    <label>Compétence</label>
                    <select id="competence" name="competence">
                        <option value="Programmation">Programmation</option>
                        <option value="Design">Design</option>
                        <option value="Marketing">Marketing</option>
                        <option value="Langues">Langues</option>
                    </select>
                    <p><br><br>
                    <input type="submit" value="Enregistrer" />
                    <input type="reset" value="Annuler" />
                </fieldset>
            </form>
        </article>

        <aside>
            <table border="1">
                <caption>Liste Personnes</caption>
                <tr>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Téléphone</th>
                    <th>Email</th>
                    <th>Compétence</th>
                </tr>

                <c:forEach var="cont" items="${contacts}">
                    <tr>
                        <td>${cont.nom}</td>
                        <td>${cont.prenom}</td>
                        <td>${cont.telephone}</td>
                        <td>${cont.email}</td>
                        <td>${cont.competence}</td>
                    </tr>
                </c:forEach>
            </table>
        </aside>
    </section>
    <footer>
        <div id="gauche">Orange</div>
        <div id="milieu">Digital</div>
        <div id="droite">Kalanso</div>
    </footer>
    </body>
</html>
