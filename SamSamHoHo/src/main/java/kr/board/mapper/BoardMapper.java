package kr.board.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import kr.board.entity.BarsCount;
import kr.board.entity.Board;
import kr.board.entity.News;
import kr.board.entity.NewsCount;
import kr.board.entity.Paging;

@Mapper
public interface BoardMapper {

	public List<Board> boardList();

	public void boardInsert(Board board);

	public Board boardContent(int idx);

	public void boardDelete(int idx);

	public void boardUpdate(Board vo);
	
	@Update("update board set count = count + 1 where idx = #{idx}")
	public void boardCount(int idx);
	
	// 메인화면 카테고리별 뉴스기사 1개
	public List<News> newsList(String category);
	
	// 메인화면 최신기사 3개
	public List<News> Qnews();

	// 메인화면 언론사별 기사
	public List<News> pressNews(String press);

	// 메인하단부 언론사별 개수
	public List<NewsCount> countPress();

	// 메인하단부 카테고리별 개수
	public List<BarsCount> countBar();

	// 카테고리 페이지에 들어갈 뉴스리스트
	public List<News> cateNews(String category);

	// test Paging
	public List<News> testCateNews(Paging vo);



	



}



















