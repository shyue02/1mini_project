package site.metacoding.miniproject.web.dto.response;

import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class CompanyRecommendDto {
	private Integer recommendCount;
	private Integer userId;
	private Integer companyId;
	private String companyName;
	private String address;
	private String salary;
	private String tech;
}
