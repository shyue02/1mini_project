package site.metacoding.miniproject.web.dto;

import lombok.Getter;

@Getter
public class UserJoinDto {
    private String username;
    private String password;
    private String role;
}