package fr.formation.TipTopTravel.dao;
import org.springframework.data.jpa.repository.JpaRepository;
import fr.formation.TipTopTravel.entity.Country;

public interface CountryRepository extends JpaRepository<Country, Integer>{
		
}
