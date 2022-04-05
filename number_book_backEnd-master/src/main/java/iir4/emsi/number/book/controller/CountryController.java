package iir4.emsi.number.book.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import iir4.emsi.number.book.model.Country;
import iir4.emsi.number.book.repository.CountryRepository;

@RestController
@RequestMapping("/country")
public class CountryController {
	@Autowired
	CountryRepository countryRepository;
	@PostMapping
	public void ajouter(@RequestBody Country c) {
		countryRepository.save(c);
	}

}
