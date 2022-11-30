package in.ashokit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import in.ashokit.entity.Student;
import in.ashokit.repository.StudentRepository;

@Controller
public class StudentController 
{
	@Autowired
	private StudentRepository repo;
	
	
	@GetMapping("/students")
	public ModelAndView getAllstudents()
	{
		ModelAndView mav = new ModelAndView();
		List<Student> students =repo.findAll();
		mav.addObject("studentAll",students);
		mav.setViewName("indexAll");
		return mav;
	}
	
	@GetMapping("/studentById/{id}")
	public String getStudentById(@PathVariable Integer id, Model model)
	{
		model.addAttribute("getById", repo.getById(id));
		return "indexId";
	}
	

}
