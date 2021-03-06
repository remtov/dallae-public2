package shop.dallae.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import shop.dallae.dao.SellerInfoDAO;
import shop.dallae.vo.SellerInfo;

@Repository
public class SellerInfoDAOImpl implements SellerInfoDAO {

	@Autowired
	private SqlSessionTemplate SqlSessionTemplate;

	@Override
	public List<SellerInfo> getSellerInfoList(SellerInfo sellerInfo) {

		return SqlSessionTemplate.selectList("SQL.SellerInfoSQL.getSellerInfoList", sellerInfo);
	}

	@Override
	public SellerInfo getSellerInfo(Integer sellerInfoNumber) {

		return SqlSessionTemplate.selectOne("SQL.SellerInfoSQL.getSellerInfoList", sellerInfoNumber);
	}

	@Override
	public int insertSellerInfo(SellerInfo sellerInfo) {

		return SqlSessionTemplate.insert("SQL.SellerInfoSQL.insertSellerInfo", sellerInfo);
	}

	@Override
	public int updateSellerInfo(SellerInfo sellerInfo) {

		return SqlSessionTemplate.update("SQL.SellerInfoSQL.updateSellerInfo", sellerInfo);

	}

	@Override
	public int deleteSellerInfo(Integer sellerInfoNumber) {

		return SqlSessionTemplate.delete("SQL.SellerInfoSQL.deleteSellerInfo", sellerInfoNumber);
	}

}
