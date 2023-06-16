package kr.board.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class News {

	private int idx; // 번호
	private String press; // 작성자 id
	private String category; // 제목
	private String title; // 내용
	private String date; // 작성자
	private String reporter; // 작성일
	private String content; // 조회수
	private String tr_content; // 조회수
	private String summ_content; // 조회수
	private String keyword; // 조회수
	private String url; // 조회수
}
