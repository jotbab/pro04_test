package com.test.dao;

import java.util.List;

import com.test.dto.BoardDTO;

public interface BoardDAO {

	public List<BoardDTO> boardList() throws Exception;
	public BoardDTO boardDetail(int seq) throws Exception;
	public void boardInsert(BoardDTO dto) throws Exception;
	public void boardDelete(int seq) throws Exception;
	public void boardEdit(BoardDTO dto) throws Exception;
	
}
