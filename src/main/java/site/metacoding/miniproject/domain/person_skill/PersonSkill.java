package site.metacoding.miniproject.domain.person_skill;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Getter
public class PersonSkill {
	private Integer personSkillId;
	private Integer personId;
	private String skill;
	private Timestamp createdAt;
}
