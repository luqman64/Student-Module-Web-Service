package com.hissdk.hissdkbackend.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.hissdk.hissdkbackend.model.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Integer>{

	@Query(value="SELECT * from students LIMIT 2",nativeQuery=true )
	 List<Student> studentLimit2();
	
	@Query(value = "SELECT students.* FROM students LEFT JOIN courses ON students.id = courses.id WHERE courses.subject LIKE %:subject%", nativeQuery = true)
	 List<Student> searchSubject(@Param("subject") String subject);

}
