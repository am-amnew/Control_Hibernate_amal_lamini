package dao;

import java.util.List;


import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import bean.Etudiant;

public class UserDAO {
    private static final SessionFactory sessionFactory;

    static {
        try {
            Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
            sessionFactory = configuration.buildSessionFactory();
        } catch (Throwable ex) {
            throw new ExceptionInInitializerError(ex);
        }
    }

    public void addUserDetails(String nom, String password, String email, String tel, String ecole) {
        try (Session session = sessionFactory.openSession()) {
            Etudiant user = new Etudiant();
            user.setNom(nom);
            user.setPassword1(password);
            user.setEmail(email);
            user.setTel(tel);
            user.setEcole(ecole);

            session.save(user);
            System.out.println("\n\n Details Added \n");
        } catch (HibernateException e) {
            System.err.println("Error adding user details: " + e.getMessage());
        }
    }

    public List<Etudiant> getAllUsers() {
        try (Session session = sessionFactory.openSession()) {
            String hql = "FROM Etudiant";
            return session.createQuery(hql, Etudiant.class).getResultList();
        } catch (HibernateException e) {
            System.err.println("Error retrieving user list: " + e.getMessage());
            return null;
        }
    }
    public Etudiant getEtudiantById(int etudiantId) {
        try (Session session = sessionFactory.openSession()) {
            return session.get(Etudiant.class, etudiantId);
        } catch (HibernateException e) {
            System.err.println("Error retrieving etudiant by ID: " + e.getMessage());
            return null;
        }
    }

    public void deleteEtudiantById(int etudiantId) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            Etudiant etudiant = session.get(Etudiant.class, etudiantId);
            if (etudiant != null) {
                transaction = session.beginTransaction();
                session.delete(etudiant);
                transaction.commit();
                System.out.println("\n\n Etudiant Deleted \n");
            }
        } catch (HibernateException e) {
            if (transaction != null) {
                transaction.rollback();
            }
            System.err.println("Error deleting etudiant by ID: " + e.getMessage());
        }
    }

    public void updateEtudiantDetails(Etudiant etudiant) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();
            session.update(etudiant);
            transaction.commit();
            System.out.println("\n\n Etudiant Details Updated \n");
        } catch (HibernateException e) {
            if (transaction != null) {
                transaction.rollback();
            }
            System.err.println("Error updating etudiant details: " + e.getMessage());
        }
    }
}