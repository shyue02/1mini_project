package site.metacoding.miniproject.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.person.Person;
import site.metacoding.miniproject.domain.person.PersonDao;
import site.metacoding.miniproject.domain.person_skill.PersonSkillDao;
import site.metacoding.miniproject.domain.resume.Resume;
import site.metacoding.miniproject.domain.resume.ResumeDao;
import site.metacoding.miniproject.domain.user.User;
import site.metacoding.miniproject.domain.user.UserDao;

import site.metacoding.miniproject.web.dto.request.PersonJoinDto;
import site.metacoding.miniproject.web.dto.request.ResumeWriteDto;
import site.metacoding.miniproject.web.dto.response.PersonInfoDto;
import site.metacoding.miniproject.web.dto.response.PersonRecommendListDto;
import site.metacoding.miniproject.web.dto.response.ResumeFormDto;


@RequiredArgsConstructor
@Service
public class PersonService {
	
	private final PersonSkillDao personSkillDao;
	private final PersonDao personDao;
	private final UserDao userDao;
	private final ResumeDao resumeDao;


	@Transactional(rollbackFor = {RuntimeException.class})
	public void 회원가입(PersonJoinDto personJoinDto) {
		userDao.insert(personJoinDto.toUser());
		User userPS = userDao.findByUsername(personJoinDto.getUsername());
		personDao.insert(personJoinDto.toPerson(userPS.getUserId()));
	}


	public ResumeFormDto 이력서내용가져오기(Integer personId) {
		Person person = personDao.findById(personId);
		ResumeFormDto resumeFormDto = new ResumeFormDto(personId, person.getPersonName(), person.getPersonEmail(),
				person.getDegree(), personSkillDao.findByPersonId(personId));
		return resumeFormDto;

	}

	public void 이력서등록(ResumeWriteDto resumeWriteDto, Integer personId) {
		Resume resume = resumeWriteDto.toEntity(personId);
		resumeDao.insert(resume);
	}

	public Integer 개인번호갖고오기(Integer userId) {
		return personDao.findToId(userId);
	}
	
	public List<PersonInfoDto> 개인정보보기(Integer personId){
		return personDao.personInfo(personId);
	}

	public List<PersonInfoDto> 개인기술보기(Integer personId){
		return personSkillDao.personSkillInfo(personId);
	}
	
	public List<PersonRecommendListDto>구직자추천리스트보기(){
		List<PersonRecommendListDto> personRecommendListDto = personDao.findToPersonRecommned();
		for (int i = 0; i < personRecommendListDto.size(); i++) {
			Integer personId = personRecommendListDto.get(i).getPersonId();
			personRecommendListDto.get(i).setSkill(personSkillDao.findByPersonId(personId));
		}
		return  personRecommendListDto;
	}

}
