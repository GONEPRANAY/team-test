package controller;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pojos.UserRegister;

@Controller
public class MainController {

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String saveitems(UserRegister ur, Model model) {
		Configuration configure = new AnnotationConfiguration().configure();
		SessionFactory Sf = configure.buildSessionFactory();
		Session s = Sf.openSession();
		s.save(ur);
		s.beginTransaction().commit();
		model.addAttribute("msg2", "registered sucesss");
		s.close();
		return "homepage";

	}
}