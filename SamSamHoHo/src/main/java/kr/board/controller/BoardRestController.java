package kr.board.controller;

import java.io.Console;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.board.entity.BarsCount;
import kr.board.entity.Board;
import kr.board.entity.Keywords;
import kr.board.entity.News;
import kr.board.entity.NewsCount;
import kr.board.entity.Paging;
import kr.board.mapper.BoardMapper;

@RequestMapping("/board")
@RestController
public class BoardRestController {
	
	@Autowired
	private BoardMapper boardMapper;

	// 메인화면 카테고리별 최신기사 1개
	@GetMapping("/all")
	public List<News> newsList(@RequestParam("category")String category){
		List<News> list = boardMapper.newsList(category);
		return list;
	}
	
	// 메인하단부 언론사별 개수
	@GetMapping("/CntPress")
	public List<NewsCount> presscnt(){
		List<NewsCount> list = boardMapper.countPress();
		return list;
	}
	
	// 메인하단부 카테고리별 개수
	@GetMapping("/BarPress")
	public List<BarsCount> barcnt(){
		List<BarsCount> list = boardMapper.countBar();
		return list;
	}
	
	
	// 카테고리별 오늘의 뉴스 몇개인지세서 페이징에 쓸예정
	@GetMapping("/cntCt")
	public int cntCt(@RequestParam("category")String category) {
		int cntCt = boardMapper.countCate(category);
		return cntCt;
	}
	
	
	
	// 오늘의 키워드 열개
	@GetMapping("/keyword")
	public List<Keywords> keyword_ten(@RequestParam("category")String category) {
		List<Keywords> list = boardMapper.keyword_ten(category);
		return list;
	}
	
	// 오늘의 키워드랑 관련된 키워드 다섯개
	@GetMapping("/keyNews")
	public List<News> keyNews(@RequestParam("keyword")String keyword){
		List<News> list = boardMapper.keyNews(keyword);
		return list;
	}


	// Test.....
	@GetMapping("/paging")
	public  Paging test(Paging vo) {
		return vo;
	}
	
	 
	// 검색에 쓸 키워드목록
	@GetMapping("/keySearch")
	public List<Keywords> keySearch(){
		List<Keywords> list = boardMapper.keySearch();
		return list;
	}
	
	// 검색결과 보여줄 리스트
	@GetMapping("/search")
	public List<News> search(@RequestParam("query")String query) {
		List<News> list = boardMapper.search(query);
		return list;
	}
	
	
	
	// 오늘의 키워드 50개
	@GetMapping("/keyword_fifty")
	public List<Keywords> keywords_fifty(@RequestParam("category")String category) {
		List<Keywords> list = boardMapper.keywords_fifty(category);
		return list;
	}
	
	// 카테고리별 상세 + 페이징
	@GetMapping("testPaging")
	public List<News> testPaging(@RequestParam("param1")int param1, 
			@RequestParam("param2")int param2,
			@RequestParam("param3")String param3){
		
		List<News> list = boardMapper.testCateNews(param1, param2, param3);
		return list;
	}
	
	// 메인화면 언론사별 기사 5개
	@GetMapping("/Pnews")
	public List<News> pressNews(@RequestParam("press")String press){
		List<News> list = boardMapper.pressNews(press);
		System.out.println(press);
		return list;
	}
	
	// 메인화면 최신뉴스 3개
	@GetMapping("/Qnews")
	public List<News> Qnews(){
		List<News> list = boardMapper.Qnews();
		return list;
	}
	
	// 뉴스 상세 페이지
	@GetMapping("/getNewsFull")
	public List<News> getNewsFull(@RequestParam("idx") int idx){
		List<News> news = boardMapper.getNewsFull(idx);
		return news;
}
	
	// 뉴스 상세 페이지 내 기사 목록
	@GetMapping("/getPressList")
	public List<News> getPressList(News newsdata){
		List<News> news = boardMapper.getPressList(newsdata);
		return news;
	}
	
	
}
