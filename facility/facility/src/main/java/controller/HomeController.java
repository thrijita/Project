package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import Model.Product;
import service.ProductService;

//import DAO.ProductDao;
//import DAO.ProductDaoImpl;
//import Model.Product;
//import service.ProductService;


@Controller
public class HomeController {

	 @Autowired
	 ProductService pservice;
	 
	 
	public HomeController() {
		
	}


	String s=null;
	
	@RequestMapping("/")
	public String home()
	{
		return "home";
	}
	
	
	/*@RequestMapping("/Product")
	public String listproducts(Model model) {
		
		
		
		 
		 model.addAttribute("employees", pservice.getAll());
			
			return "product";
		  
		 }*/
	
	@RequestMapping("/addprod")
		 public ModelAndView getForm(@ModelAttribute("p") Product p) {
	  return new ModelAndView("addproduct");
	 }
	
	@RequestMapping("/Product")
	//@RequestMapping("/Product,/addProduct")
	public String product()
	{
		//s=name;
	
		return "product";
	}
	
	List<Product> plist=null;
	@RequestMapping("/p")
	public @ResponseBody String getValues()
	{	
		plist=pservice.getAll();
		Gson gson=new Gson();
		String result= gson.toJson(plist);
		return result;
		 
		/*if((s.equals("img1"))||(s.equals("img2"))||(s.equals("img3")))
			plist=pdao.getproduct(s);
		if((s.equals("img4")))		
		plist = pdao.getAllproduct();
		Gson gson=new Gson();
		String result= gson.toJson(plist);
		return result;*/
	
	}
	
	@ModelAttribute("prd")//This refers to command name which we gave 
	public Product create()
	{
	System.out.println("inside modelattribute");
	return new Product();//creating a model object
	}
	@RequestMapping(value={"/addProduct"},method=RequestMethod.POST)
	public ModelAndView adding(@ModelAttribute("p") Product p)
	{
		
		pservice.create(p);//calls service method
		
/*plist=pservice.getAll();
Gson gson=new Gson();
String result= gson.toJson(plist);
return result;*/
	return new ModelAndView("redirect:Product");
	}

	/*@RequestMapping(value={"/addProduct"},method=RequestMethod.POST)
	public String updating(@ModelAttribute("p") Product p)
	{
		
		pservice.update(p);//calls service method
		
plist=pservice.getAll();
Gson gson=new Gson();
String result= gson.toJson(plist);
return result;
	return "home";
	}*/

	
	@RequestMapping("form")
	 public ModelAndView getForm1( @ModelAttribute("p") Product p,BindingResult result) {
	  return new ModelAndView("form");
	 }
	 @RequestMapping("register")
	 public ModelAndView registerUser(@ModelAttribute("p") Product p,BindingResult result) {
		 pservice.create(p);
	  return new ModelAndView("redirect:list");
	 }
	 
	 
	 @RequestMapping("list")
	 public ModelAndView getList() {
	  plist = pservice.getAll();
	  return new ModelAndView("plist", "employeeList", plist);
	 }
	 
	 @RequestMapping("edit")
	 public ModelAndView editUser(@RequestParam int id, @ModelAttribute("p") Product p,BindingResult result) {
	  Product pObject = pservice.getRowById(id);
	  return new ModelAndView("form", "employeeObject", pObject);
	 }
	 
	 @RequestMapping("update")
	 public ModelAndView updateUser(@ModelAttribute Product p) {
	  pservice.updateRow(p);
	  return new ModelAndView("redirect:Product");
	 }
	 @RequestMapping("delete")
	 public ModelAndView deleteUser(@RequestParam int id) {
	 pservice.deleteRow(id);
	  return new ModelAndView("redirect:Product");
	 }
}
