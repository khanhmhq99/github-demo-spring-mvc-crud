package net.codejava.employee;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import net.codejava.employee.Employee;

public interface EmployeeRespository extends CrudRepository<Employee, Integer>{

	@Query(value = "SELECT e FROM Employee e WHERE e.name LIKE '%' || :keyword || '%'"
			+ " OR e.email LIKE '%' || :keyword || '%'"
			+ " OR e.address LIKE '%' || :keyword || '%'")
	public List<Employee> search(@Param("keyword") String keyword);
}
