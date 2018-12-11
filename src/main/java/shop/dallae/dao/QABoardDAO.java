package shop.dallae.dao;

import java.util.List;

import shop.dallae.vo.QABoard;

public interface QABoardDAO {
	
	public List<QABoard> getQABoard(QABoard qaboard);

	public QABoard getQABoard(Integer qaboardnumber);

	public int insertQABoard(QABoard qaboard);

	public int updateQABoard(QABoard qaboard);

	public int deleteQABoard(Integer qaboardnumber);


}
