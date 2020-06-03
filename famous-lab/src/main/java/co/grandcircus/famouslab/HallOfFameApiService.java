package co.grandcircus.famouslab;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class HallOfFameApiService {

	private RestTemplate rest = new RestTemplate();

	public List<Tiny> showTiny() {

		String url = "https://dwolverton.github.io/fe-demo/data/computer-science-hall-of-fame.json";
		HallOfFame response = rest.getForObject(url, HallOfFame.class);
		return response.getTiny();
	}

	public List<Complete> showComplete() {

		String url = "https://dwolverton.github.io/fe-demo/data/computer-science-hall-of-fame.json";
		HallOfFame response = rest.getForObject(url, HallOfFame.class);
		return response.getComplete();
	}

}
