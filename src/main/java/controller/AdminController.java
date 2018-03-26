package controller;

import org.springframework.stereotype.Controller;
	
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.idao.IRegisterDao;
import com.pojos.AdminReg;
@Controller
public class AdminController {
	
	@Autowired
	IRegisterDao dao;
	
	
	@RequestMapping(value="adminlogin", method=RequestMethod.GET)
	public String adminlogin() {
		return "login";
		
	}
	@RequestMapping(value="loginp", method=RequestMethod.GET)
	public String login(AdminReg areg, Model model) {
			Configuration config = new AnnotationConfiguration().configure();
			SessionFactory sf = config.buildSessionFactory();
			Session s = sf.openSession();
			s.beginTransaction();
			Criteria criteria = s.createCriteria(AdminReg.class);
			criteria.add(Restrictions.eq("Email", areg.getEmail()));
			criteria.add(Restrictions.eq("Password", areg.getPassword()));
			List<AdminReg> list = criteria.list();
			if (list != null) {

				for (AdminReg admreg : list) {

					model.addAttribute("tellme", "WELCOME"+""+admreg.getName());
					model.addAttribute("message", admreg.getEmail());
					return "homepage";

				}

			}

			model.addAttribute("msg", "User Name and Password Doesnot Match");
			return "login";

}
		
	@RequestMapping(value="adminreg", method=RequestMethod.GET)
	public String adminreg() {
		return "register";
		
	}
	@RequestMapping(value="aregister", method=RequestMethod.GET)
	public String reg(AdminReg ap, Model model){
			dao.details(ap);
			model.addAttribute("success", "successfully registered");
			return "homepage";
		}
}
