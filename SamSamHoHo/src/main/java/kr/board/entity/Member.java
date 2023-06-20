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
	

	private String mem_id;
	private String mem_pw;
	
	private List<Auth> authList;
	
}
