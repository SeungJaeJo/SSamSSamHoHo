package kr.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import kr.board.entity.Board;
import kr.board.entity.News;

@Mapper
public interface BoardMapper {

	public List<Board> boardList();

	public void boardInsert(Board board);

	public Board boardContent(int idx);

	public void boardDelete(int idx);

	public void boardUpdate(Board vo);
	
	@Update("update board set count = count + 1 where idx = #{idx}")
	public void boardCount(int idx);
	
	// test 뉴스 기사 
	public List<News> newsList();

	public List<News> Qnews();

	public List<News> pressNews(String press);


	



}



















