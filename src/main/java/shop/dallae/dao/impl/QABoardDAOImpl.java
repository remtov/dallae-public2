package shop.dallae.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import shop.dallae.dao.QABoardDAO;
import shop.dallae.vo.QABoard;

@Repository
public class QABoardDAOImpl implements QABoardDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<QABoard> getQABoard(QABoard qaboard) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("SQL.QABoardSQL.getListQABoard",qaboard);
	}
	
	@Override
	public QABoard getQABoard(Integer qaboardnumber) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("SQL.QABoardSQL.getQABoard",qaboardnumber);
	}

	@Override
	public int insertQABoard(QABoard qaboard) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.insert("SQL.QABoard.insertQABoard",qaboard);
	}

	@Override
	public int updateQABoard(QABoard qaboard) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("SQL.QABoard.updateQABoard",qaboard);
	}

	@Override
	public int deleteQABoard(Integer qaboardnumber) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.delete("SQL.QABoard.deleteQABoard",qaboardnumber);
	}



}
