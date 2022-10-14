package site.metacoding.miniproject.domain.person;

import java.util.List;


import site.metacoding.miniproject.web.dto.response.PersonInfoDto;
import site.metacoding.miniproject.web.dto.response.PersonRecommendListDto;


public interface PersonDao {
	public void insert(Person person);
	public Person findById(Integer personId);
	public List<PersonInfoDto> personInfo(Integer personId);
	public List<Person> findAll();
	public void update(Person person); //dto생각
	public void deleteById(Integer personId);
	public Integer findToId(Integer userId);
	public List<PersonRecommendListDto> findToPersonRecommned();
}