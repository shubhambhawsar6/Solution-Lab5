package com.greatlearning.debateEvent.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.greatlearning.debateEvent.entity.Student;
import com.greatlearning.debateEvent.service.StudentService;

@Controller
@RequestMapping("/students")
public class StudentController {
	
	@Autowired
	public StudentService studentService;
	
	@RequestMapping("/list")
	public String findAll(Model model) {
		List<Student> studentList =studentService.findAll();
		model.addAttribute("studentList", studentList);
		return "Students";
		}
	
	@RequestMapping("/save")
	public String save(@RequestParam("firstName") String firstName,
	@RequestParam("lastName") String lastName, @RequestParam("country") String country) {
		Student student=new Student(firstName,lastName,country);
		studentService.save(student);
		return "redirect:list";
	}
	
	@RequestMapping("/addStudent")
	public String addStudent() {
	
		return "StudentForm";
		}

}
