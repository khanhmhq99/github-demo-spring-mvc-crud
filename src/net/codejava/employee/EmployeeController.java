package net.codejava.employee;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmployeeController {
	private final String CREATE_NEW_PAGE = "create";
	private final String UPDATE_PAGE = "update";
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
	@RequestMapping("/new")
	public String newEmployeeForm(Map<String, Object> model) {
		model.put("employee", new Employee());
		return CREATE_NEW_PAGE;
	}
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveEmployee(@ModelAttribute("employee") Employee employee) {
		service.save(employee);
		
		return "redirect:/";
	}
	@RequestMapping("/edit")
	public ModelAndView editEmployeeForm(@RequestParam int id) {
		ModelAndView mav = new ModelAndView(UPDATE_PAGE);
		Employee emp = service.get(id);
		mav.addObject("employee", emp);
		return mav;
	}
//	@RequestMapping("/edit")
//	public ModelAndView update(@RequestParam Employee entity) {
//		service.update(entity);
//		return "/update"; 
//	}
	
}
