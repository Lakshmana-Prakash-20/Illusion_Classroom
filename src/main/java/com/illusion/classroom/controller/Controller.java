package com.illusion.classroom.controller;

import java.util.List;
import java.util.Optional;

import javax.net.ssl.HttpsURLConnection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.illusion.classroom.dao.BatchDao;
import com.illusion.classroom.dto.AddedBatchDetails;
import com.illusion.classroom.dto.AdminLogin;
import com.illusion.classroom.dto.Batch;
import com.illusion.classroom.dto.Login;
import com.illusion.classroom.service.AddBatchDetailsSevice;
import com.illusion.classroom.service.BatchService;
import com.illusion.classroom.service.LoginService;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@RestController
public class Controller {
	@Autowired
	LoginService loginService;
	
	
	@Autowired
	AddBatchDetailsSevice addBatchDetailsSevice;
	
	
	@Autowired
	BatchService batchService;
	
	@GetMapping("/")
	public ModelAndView indexMapping() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Home.jsp");
		return mv;
	}
	@PostMapping("save")
	public ModelAndView saveCredentials(Login L) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("AccountCreatedSuccessfully.jsp");
		loginService.SaveCredentials(L);
		return mv;
	}
	@PostMapping("login")
	public ModelAndView getCredentials(@ModelAttribute Login lo, HttpServletRequest request)
	{	
		HttpSession session = request.getSession();
		String email = lo.getEmail();
		String password = lo.getPassword();
		Optional<Login> o=loginService.getCredentials(email);
		
		if(o.isPresent()) {
			Login l = o.get();
			if(l.getEmail().equals(email) && l.getPassword().equals(password)) {
				session.setAttribute("name",l.getUsername());
				List<AddedBatchDetails> batch=addBatchDetailsSevice.fetchAllBatch();
					List<Batch>	allbatch=batchService.getAllBatch();	
					session.setAttribute("allbatch", allbatch);
						session.setAttribute("addbatch", batch);
				ModelAndView mv = new ModelAndView();
				mv.setViewName("AddedClassroomDisplay.jsp");
				return mv;
			}
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("InvalidUser.jsp");
		return mv;

	}
	
	@PostMapping("loginadmin")
	public ModelAndView getAdmin(@RequestBody String email,@RequestBody String password,HttpServletRequest request) {
		if(email.equals(AdminLogin.getCredentials())) {
			List<Batch> batch = batchService.getAllBatch();
			HttpSession session = request.getSession();
			session.setAttribute("batch",batch);
			ModelAndView mv = new ModelAndView();
			mv.setViewName("Classroom.jsp");
			return mv;
		}else {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("InvalidAdmin.jsp");
		return mv;
		}
	}
	
	@PostMapping("addbatch")
	public ModelAndView saveBatch(@ModelAttribute Batch b ) {
	
		batchService.saveBatch(b);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("ClassroomCreated.jsp");
		return mv;
		
	}
	@GetMapping("getallbatch")
	public ModelAndView getAllBatch(HttpServletRequest request) {
	
		List<Batch> batch = batchService.getAllBatch();
		HttpSession session = request.getSession();
		session.setAttribute("batch",batch);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Classroom.jsp");
		return mv;
		
	}
	
	@PostMapping("addnewclassroom")
	public ModelAndView addBatch(@ModelAttribute AddedBatchDetails addbatch) {
		
		List<Batch> batch = batchService.getAllBatch();
		
		for(Batch b : batch) {
			if(b.getBatchcode().equals(addbatch.getBatchcode())) {
				addBatchDetailsSevice.saveBatch(addbatch);
				ModelAndView mv = new ModelAndView();
				mv.setViewName("ClassroomCreated.jsp");
				return mv;
			}
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("InvalidBatchCode.jsp");
		return mv;
		
	}

}
