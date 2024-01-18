package dao;

import java.util.List;


import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import bean.Module;

public class ModuleDAO {
    private static final SessionFactory sessionFactory;

    static {
        try {
            Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
            sessionFactory = configuration.buildSessionFactory();
        } catch (Throwable ex) {
            throw new ExceptionInInitializerError(ex);
        }
    }

    public void addModuleDetails(String moduleName, String moduleDescription) {
        try (Session session = sessionFactory.openSession()) {
            Module module = new Module();
            module.setModuleName(moduleName);
            module.setModuleDescription(moduleDescription);

            session.save(module);
            System.out.println("\n\n Module Details Added \n");
        } catch (HibernateException e) {
            System.err.println("Error adding module details: " + e.getMessage());
        }
    }

    public List<Module> getAllModules() {
        try (Session session = sessionFactory.openSession()) {
            String hql = "FROM Module";
            return session.createQuery(hql, Module.class).getResultList();
        } catch (HibernateException e) {
            System.err.println("Error retrieving module list: " + e.getMessage());
            return null;
        }
    }
    public Module getModuleById(int moduleId) {
        try (Session session = sessionFactory.openSession()) {
            return session.get(Module.class, moduleId);
        } catch (HibernateException e) {
            System.err.println("Error retrieving module by ID: " + e.getMessage());
            return null;
        }
    }

    public void deleteModuleById(int moduleId) {
        try (Session session = sessionFactory.openSession()) {
            Module module = session.get(Module.class, moduleId);
            if (module != null) {
                session.beginTransaction();
                session.delete(module);
                session.getTransaction().commit();
                System.out.println("\n\n Module Deleted \n");
            }
        } catch (HibernateException e) {
            System.err.println("Error deleting module by ID: " + e.getMessage());
        }
    }

    public void updateModuleDetails(Module module) {
        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            session.update(module);
            session.getTransaction().commit();
            System.out.println("\n\n Module Details Updated \n");
        } catch (HibernateException e) {
            System.err.println("Error updating module details: " + e.getMessage());
        }
    }

}

