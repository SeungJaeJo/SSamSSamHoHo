package kr.board.entity;


import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Member {
	
	//private int memIdx;
	private String mem_id;
	private String mem_pw;
	//private String mem_preference;
	//private int memAge;
	//private String memGender;
	//private String memEmail;
	//private String memProfile;
	// 회원의 권한을 저장할 필드
	//private List<Auth> authList;
	
}
