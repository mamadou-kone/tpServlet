package com.mycompany.projecontact;

import com.mycompany.projecontact.Contacts;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "MaServlet", urlPatterns = {"/Ma_Servlet"})
public class MaServlet extends HttpServlet {
    private List<Contacts> contacts = new ArrayList<>();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String action = request.getParameter("action");
        if ("delete".equals(action)) {
            String nom = request.getParameter("nom");
            deleteContact(nom);
        }
        request.setAttribute("contacts", contacts);
        request.getRequestDispatcher("contact.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String tel = request.getParameter("telephone");
        String email = request.getParameter("email");
        String comp = request.getParameter("competence");

        // Créer un objet contact avec les données du formulaire
        Contacts contact = new Contacts();
        contact.setNom(nom);
        contact.setPrenom(prenom);
        contact.setTelephone(tel);
        contact.setEmail(email);
        contact.setCompetence(comp);

        // Ajouter le contact à la liste des contacts
        contacts.add(contact);

        // Ajouter le contact à la base de données (vous devez implémenter cette partie)

        // Mettre à jour la liste des contacts dans la requête
        request.setAttribute("contacts", contacts);

        // Rediriger vers la page JSP
        request.getRequestDispatcher("contact.jsp").forward(request, response);
    }
    private void deleteContact(String nom) {
    for (int i = 0; i < contacts.size(); i++) {
        if (contacts.get(i).getNom().equals(nom)) {
            contacts.remove(i);
            break;
        }
    }
}
}
