package site.metacoding.miniproject.domain.resume;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Getter
public class Resume {
	private Integer resumeId;
	private Integer personId;
	private String resumeTitle;
	private String photo;
	private String introduction;
	private String myCloud;
	private Timestamp createdAt;

	public Resume(Integer personId, String resumeTitle, String photo, String introduction, String myCloud) {
		this.personId = personId;
		this.resumeTitle = resumeTitle;
		this.photo = photo;
		this.introduction = introduction;
		this.myCloud = myCloud;
	}

}
