package xyz.mizan.launch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UtilController {

	@RequestMapping("/")
	public String goIndex() {
		return "index";
	}
	@RequestMapping("/patientlistpage")
	public String goPatientListPage() {
		return "patient-list";
	}
}
