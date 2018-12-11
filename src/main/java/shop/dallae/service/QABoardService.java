package shop.dallae.service;

import java.util.List;

import shop.dallae.vo.QABoard;

public interface QABoardService {
	public List<QABoard> getQABoardList(QABoard qaboard);

	public QABoard getQABoard(Integer qaboardNumber);

	public int insertQABoard(QABoard qaboard);
	
	public int updateQABoard(QABoard qaboard);

	public int deleteQABoard(Integer qaboardNumber);


	
}
