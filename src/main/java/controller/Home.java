package controller;

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
public class Home {

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(Model model) {
		return "loginpage";

	}

	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String register() {
		return "registerpage";

	}
}
