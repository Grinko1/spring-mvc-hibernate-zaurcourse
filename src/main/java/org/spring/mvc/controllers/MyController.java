package org.spring.mvc.controllers;

import org.spring.mvc.entity.Employee;
import org.spring.mvc.services.EmployeeServiceInt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class MyController {
    private final EmployeeServiceInt employeeService;

    @Autowired
    public MyController(EmployeeServiceInt employeeService) {
        this.employeeService = employeeService;
    }

    @GetMapping
    public String showAllPage(Model model) {
        model.addAttribute("employees", employeeService.getAllEmployees());
        return "employees";
    }

    @GetMapping("add")
    public String addPage(Model model) {
        Employee employee = new Employee();
        model.addAttribute("employee", employee);
        return "form";
    }

    @GetMapping("save")
    public String saveEmployee(@ModelAttribute("employee") Employee employee) {

            employeeService.saveEmp(employee);

        return "redirect:/";
    }
    @GetMapping("update/{id}")
    public String updatePage(@PathVariable("id") int id, Model model){
        Employee employee = employeeService.findById(id);
        model.addAttribute(employee);
        return "form";
    }
    @GetMapping("delete/{id}")
    public String delete(@PathVariable("id") int id){
        employeeService.deleteEmp(id);
        return "redirect:/";
    }

}
//        <%@taglib uri="http:/www.java.sun.com/jsp/jstl/core" prefix="c" %>