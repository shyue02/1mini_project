package site.metacoding.miniproject.web.dto.request;

import lombok.Getter;
import lombok.NoArgsConstructor;
import site.metacoding.miniproject.domain.company.Company;
import site.metacoding.miniproject.domain.user.User;

@NoArgsConstructor
@Getter
public class CompanyJoinDto {
	private String username;
	private String password;
	private String role;
	private Integer userId;
	private String companyName;
	private String companyEmail;
	private String companyPhone;
	private String address;
	private String history;
	private String introduction;
	
	private String tech;
	private String ceoName;

	public User toUser() {
		return new User(this.username, this.password, "company");
	}

	public Company toCompany(Integer userId) {
		return new Company(userId, this.companyName, this.companyEmail, this.companyPhone, this.history,
				this.address, this.introduction);
	}
}
