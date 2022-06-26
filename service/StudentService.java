package com.greatlearning.debateEvent.service;

import java.util.List;

import com.greatlearning.debateEvent.entity.Student;

public interface StudentService {

	 public List<Student> findAll();

	 public void save(Student student);

}
