package site.metacoding.miniproject.domain.submit_resume;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Getter
public class SubmitResume {
    private Integer submitResumeId;
    private Integer resumeId;
    private Integer companyId;
    private Timestamp createdAt;
}

