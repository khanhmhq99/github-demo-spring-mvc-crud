package net.codejava.employee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService service;
	
	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView("index");
		
		List<Employee> listEmp = service.listAll();
		
		mav.addObject("listEmployee", listEmp);
		return mav;
	}
	
	@RequestMapping("/delete")
	public String deleteEmployee(@RequestParam int id) {
		service.delete(id);
		
		return "redirect:/";
	}
	@RequestMapping("/search")
	public ModelAndView search(@RequestParam String keyword) {
		ModelAndView mav = new ModelAndView("search");
		List<Employee> result = service.search(keyword);
		mav.addObject("result", result);
		return mav;
	}
}
