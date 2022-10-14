package site.metacoding.miniproject.domain.need_skill;

import java.util.List;

public interface NeedSkillDao {
	public void insert(NeedSkill needSkill);
	public NeedSkill findById(Integer needSkillId);
	public List<NeedSkill> findAll();
	public void update(NeedSkill needSkill); //dto생각
	public void deleteById(Integer needSkillId);
}
