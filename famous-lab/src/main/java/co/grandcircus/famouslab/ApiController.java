package co.grandcircus.famouslab;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ApiController {

	@Autowired
	private HallOfFameApiService service;

	@RequestMapping("/")
	public String home(Model model) {
		List<Tiny> tiny = service.showTiny();
		List<Tiny> sorted = tiny.stream().sorted(Comparator.comparing(Tiny::getYear)).collect(Collectors.toList());
		model.addAttribute("tiny", sorted);

		return "/home";

	}

	@RequestMapping("/complete")
	public String complete(Model model) {
		List<Complete> completed = service.showComplete();
		List<Complete> sorted = completed.stream().sorted(Comparator.comparing(Complete::getYear)).collect(Collectors.toList());

		model.addAttribute("complete", sorted);

		return "/complete";

	}
}
