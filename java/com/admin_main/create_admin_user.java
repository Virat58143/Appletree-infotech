package com.admin_main;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class create_admin_user {

	public static void main(String[] args) {
		 // Hibernate configuration
        SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
        Session session = factory.openSession();

        try {
            // Start transaction
            session.beginTransaction();

            // Create User object and set values
            AdminMainClass user = new AdminMainClass();
            user.setAum("apple");
            user.setPass("apple123");
            

            // Save user to database
            session.save(user);

            // Commit transaction
            session.getTransaction().commit();
            System.out.println("Data saved successfully!");

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
            factory.close();
        }
    }
}