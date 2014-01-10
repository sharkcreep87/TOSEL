package com.sharkweb.general;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;



import com.sharkweb.customer.Customer;
import com.sharkweb.product.Product;
import com.sharkweb.purchase.Purchase;

@Controller
public class GeneralController {

	@Autowired
	private GeneralDAO GeneralDAO;

	@RequestMapping("/home")
	public String home() {
		return "home";
	}
	
	// -------------------------------------------------------------------- searchCustomer

	@RequestMapping("/searchCustomer")
	public ModelAndView searchCustomer(
			@RequestParam(required = false, defaultValue = "") String ic) {
		ModelAndView mav = new ModelAndView("showCustomer");
		List<Customer> Customer = GeneralDAO.searchCustomer(ic.trim());
		mav.addObject("SEARCH_CONTACTS_RESULTS_KEY", Customer);
		return mav;
	}
	
	// -------------------------------------------------------------------- searchNotpay

	@RequestMapping("/searchNotpay")
	public ModelAndView searchNotpay() {
		ModelAndView mav = new ModelAndView("showPurchase");
		List<Product> Product = GeneralDAO.searchNotpay();
		mav.addObject("SEARCH_PURCHASE_RESULTS_KEY", Product);
		return mav;
	}
	
	// -------------------------------------------------------------------- dashboard

		@RequestMapping("/dashboard")
		public ModelAndView dashboard() {
			ModelAndView mav = new ModelAndView("dashboard");
			List<Product> Product = GeneralDAO.searchNotpay();
			int count = GeneralDAO.getCustomerCount();
			mav.addObject("count", count);
			System.out.println(count);
			mav.addObject("SEARCH_PURCHASE_RESULTS_KEY", Product);
			return mav;
		}
		
		
		
		// -------------------------------------------------------------------- invoice

				@RequestMapping("/invoice")
				public ModelAndView invoice() {
					ModelAndView mav = new ModelAndView("invoice");
					
					
					return mav;
				}
				
				
				// -------------------------------------------------------------------- login

						@RequestMapping("/login")
						public ModelAndView login() {
							ModelAndView mav = new ModelAndView("login");
							return mav;
						}
	
	// -------------------------------------------------------------------- viewAllCustomer

	@RequestMapping("/viewAllCustomer")
	public ModelAndView getAllCustomer() {
		ModelAndView mav = new ModelAndView("showCustomer");
		List<Customer> Customer = GeneralDAO.getAllCustomer();
		mav.addObject("SEARCH_CONTACTS_RESULTS_KEY", Customer);
		return mav;
	}
	
	// -------------------------------------------------------------------- saveCustomer

	@RequestMapping(value = "/saveCustomer", method = RequestMethod.GET)
	public ModelAndView newuserForm() {
		ModelAndView mav = new ModelAndView("newCustomer");
		Customer customer = new Customer();
		mav.getModelMap().put("newCustomer", customer);
		return mav;
	}

	@RequestMapping(value = "/saveCustomer", method = RequestMethod.POST)
	public String create(@ModelAttribute("newCustomer") Customer customer,
			BindingResult result, SessionStatus status) {
		if (result.hasErrors()) {
			return "newCustomer";
		}
		GeneralDAO.save(customer);
		status.setComplete();
		return "redirect:viewAllCustomer.do";
	}
	
	// -------------------------------------------------------------------- saveProduct

	@RequestMapping(value = "/saveProduct", method = RequestMethod.GET)
	public ModelAndView newProduct(@RequestParam("id") Integer id) {
		ModelAndView mav = new ModelAndView("newProduct");
		Product product = new Product();
		Customer customer = GeneralDAO.getById(id);
		mav.getModelMap().put("newProduct", product);
		mav.getModelMap().put("customer", customer);
		return mav;
	}

	@RequestMapping("/saveProduct")
	public String createProduct(@ModelAttribute("newProduct") Product product,
			BindingResult result, SessionStatus status) {
		if (result.hasErrors()) {
			return "newProduct";
		}
		GeneralDAO.saveProduct(product);
		status.setComplete();
		return "redirect:viewAllCustomer.do";
	}
	
	


	// -------------------------------------------------------------------- showProduct

	@RequestMapping("/showProduct")
	public ModelAndView getAllProduct(@RequestParam("id") Integer id) {
		ModelAndView mav = new ModelAndView("showProduct");
		List<Product> product = GeneralDAO.getProductByID(id);
		mav.addObject("SEARCH_PRODUCT_RESULTS_KEY", product);
		return mav;
	}
	// -------------------------------------------------------------------- updateCustomer

	@RequestMapping(value = "/updateCustomer", method = RequestMethod.GET)
	public ModelAndView edit(@RequestParam("id") Integer id) {
		ModelAndView mav = new ModelAndView("editCustomer");
		Customer customer = GeneralDAO.getById(id);
		mav.addObject("editCustomer", customer);
		return mav;
	}
	
	@RequestMapping(value = "/updateCustomer", method = RequestMethod.POST)
	public String update(@ModelAttribute("editCustomer") Customer customer,
			BindingResult result, SessionStatus status) {
		if (result.hasErrors()) {
			return "editCustomer";
		}
		GeneralDAO.update(customer);
		status.setComplete();
		return "redirect:viewAllCustomer.do";
	}

	// -------------------------------------------------------------------- deleteCustomer

	@RequestMapping("deleteCustomer")
	public ModelAndView delete(@RequestParam("id") Integer id) {
		ModelAndView mav = new ModelAndView("redirect:viewAllCustomer.do");
		GeneralDAO.delete(id);
		return mav;
	}
	
	// -------------------------------------------------------------------- viewAllPurchase

	@RequestMapping("/viewAllPurchase")
	public ModelAndView getPurchase(@RequestParam(required = true, defaultValue = "") Integer id) {
		ModelAndView mav = new ModelAndView("showPurchase");
		List<Purchase> Purchase = GeneralDAO.getPurchase(id);
		mav.addObject("SEARCH_PURCHASE_RESULTS_KEY", Purchase);
		return mav;
	}

}