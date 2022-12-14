package com.test.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.dto.FreeDTO;

@Repository
public class FreeDAOImpl implements FreeDAO{
	
	@Autowired
	SqlSession sqlSession;

	@Override	//게시글 리스트
	public List<FreeDTO> freeList() throws Exception {
		return sqlSession.selectList("free.freeList");
	}

	@Override	//글 상세
	public FreeDTO freeDetail(int bno) throws Exception {
		return sqlSession.selectOne("free.freeDetail", bno);
	}

	@Override
	public void freeInsert(FreeDTO dto) throws Exception {
		sqlSession.insert("free.freeInsert", dto);
	}

	@Override
	public void freeDelete(int bno) throws Exception {
		sqlSession.delete("free.freeDelete", bno);		
	}

	@Override
	public void freeEdit(FreeDTO dto) throws Exception {
		sqlSession.update("free.freeEdit", dto);
	}
	
}
