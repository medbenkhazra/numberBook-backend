package iir4.emsi.number.book.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import iir4.emsi.number.book.model.Contact;
import iir4.emsi.number.book.repository.ContactRepository;
import iir4.emsi.number.book.repository.CountryRepository;

@RestController
@RequestMapping("/contact")
public class ContactController {
	@Autowired
	ContactRepository contactRepository;
	@Autowired
	CountryRepository cr;
	@GetMapping
	public List<Contact> getAll() {
		return contactRepository.findAll();
	}
	@PostMapping
	public void ajouter(@RequestBody Contact c) {
		
		if(c.getNumber().contains("+213")) {
			c.setCountry(cr.findById(2).get());
		}else{
			c.setCountry(cr.findById(1).get());
		}
		contactRepository.save(c);
	}
	@GetMapping("/num/{num}")
	public Contact getNum (@PathVariable String num) {
		int id=-1;
		String n="";
		for (int i=0 ; i< num.length();i++){
            if(Character.isDigit(num.charAt(i))){
                n+=num.charAt(i);
            }
        }
		for (Contact contact : contactRepository.findAll()) {
			if(contact.getNumber().equals(num)) {  //was 'n'
				id=contact.getId();
				break;
			}
		}
		return contactRepository.findById(id).get();
	}
	@GetMapping("/name/{name}")
	public Contact get (@PathVariable String name) {
		int id=-1;
		for (Contact contact : contactRepository.findAll()) {
			if(contact.getName().toLowerCase().contains(name.toLowerCase())) {
				id=contact.getId();
				break;
			}
		}
		return contactRepository.findById(id).get();
	}
	@DeleteMapping
	public void del() {
		contactRepository.deleteAll();
	}
}
