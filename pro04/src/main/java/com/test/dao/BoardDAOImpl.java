package com.test.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.dto.BoardDTO;

@Repository
public class BoardDAOImpl implements BoardDAO{
	
	@Autowired
	SqlSession sqlSession;

	@Override	//게시글 리스트
	public List<BoardDTO> boardList() throws Exception {
		return sqlSession.selectList("board.boardList");
	}

	@Override	//글 상세
	public BoardDTO boardDetail(int seq) throws Exception {
		return sqlSession.selectOne("board.boardDetail", seq);
	}

	@Override
	public void boardInsert(BoardDTO dto) throws Exception {
		sqlSession.insert("board.boardInsert", dto);
	}

	@Override
	public void boardDelete(int seq) throws Exception {
		sqlSession.delete("board.boardDelete", seq);		
	}

	@Override
	public void boardEdit(BoardDTO dto) throws Exception {
		sqlSession.update("board.boardEdit", dto);
	}
	
}
