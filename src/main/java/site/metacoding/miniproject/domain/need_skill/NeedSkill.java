package site.metacoding.miniproject.domain.need_skill;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Getter
public class NeedSkill {
	private Integer needSkillId;
	private Integer noticeId;
	private String skill;
	private Timestamp createdAt;
}
