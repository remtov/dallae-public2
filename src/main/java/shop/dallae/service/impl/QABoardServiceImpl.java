package shop.dallae.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dallae.dao.impl.QABoardDAOImpl;
import shop.dallae.service.QABoardService;
import shop.dallae.vo.QABoard;



@Service
public class QABoardServiceImpl implements QABoardService{

	@Autowired
	private QABoardDAOImpl qaboardDAOImpl;
	@Override
	public List<QABoard> getQABoardList(QABoard qaboard) {
		// TODO Auto-generated method stub
		return qaboardDAOImpl.getQABoard(qaboard);
	}

	@Override
	public QABoard getQABoard(Integer qaboardNumber) {
		// TODO Auto-generated method stub
		return qaboardDAOImpl.getQABoard(qaboardNumber);
	}

	@Override
	public int insertQABoard(QABoard qaboard) {
		// TODO Auto-generated method stub
		return qaboardDAOImpl.insertQABoard(qaboard);
	}
	
	@Override
	public int updateQABoard(QABoard qaboard) {
		// TODO Auto-generated method stub
		return qaboardDAOImpl.updateQABoard(qaboard);
	}


	@Override
	public int deleteQABoard(Integer qaboardNumber) {
		// TODO Auto-generated method stub
		return qaboardDAOImpl.deleteQABoard(qaboardNumber);
	}

	
}
