package kr.board.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Keywords {

	private int idx; // 번호
	private String category;
	private String date;
	private String keyword;
	private int count;
}
