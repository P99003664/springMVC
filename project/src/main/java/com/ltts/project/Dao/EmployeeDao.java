package com.ltts.project.Dao;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ltts.project.model.Employee;

@Repository
public class EmployeeDao {
	
	@Autowired
	private EntityManager em;
	
	@Autowired
	private SessionFactory sf;
	
	
	public boolean InsertEmployee(Employee e) {
		boolean b=false;
		Session s=null;
		try {
			s=sf.openSession();
			s.beginTransaction();
			
			s.save(e);
			//System.out.println(st);
			s.getTransaction().commit();
			
		}
		catch(Exception e1) {
			System.out.println("Exception "+e1);
			b=true;
		}
		finally {
			sf.close();
		}
		
		return b;
	}
	
	
	/*
	 * public List<Member> getMembers(){ List }
	 */
	
	public Employee getEmployeeById(String employeeid) {
		Employee e = (Employee)sf.openSession().get(Employee.class,employeeid);
		return e;
	}
	

}
