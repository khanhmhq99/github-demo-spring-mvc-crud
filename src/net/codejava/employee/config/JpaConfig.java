package net.codejava.employee.config;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@Configuration
@EnableJpaRepositories(basePackages = {"net.codejava.employee"})
public class JpaConfig {
	static EntityManagerFactory factory;
	static EntityManager createEntityManager;
	
	private static void begin() {

		factory = Persistence.createEntityManagerFactory("EmployeeUnit");
		
		createEntityManager = factory.createEntityManager();

		createEntityManager.getTransaction().begin();
	}
	
	private static void end() {
		createEntityManager.getTransaction().commit();
		createEntityManager.close();
		factory.close();
	}

}
