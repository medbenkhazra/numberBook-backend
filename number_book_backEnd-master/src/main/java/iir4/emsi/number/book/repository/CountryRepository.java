package iir4.emsi.number.book.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import iir4.emsi.number.book.model.Country;

@Repository
public interface CountryRepository extends JpaRepository<Country,Integer> {

}
