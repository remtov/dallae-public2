package shop.dallae.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import shop.dallae.dao.ProductDAO;
import shop.dallae.vo.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<Product> getProductList(Product product) {

		return sqlSessionTemplate.selectList("SQL.ProductSQL.getProductList", product);
	}

	@Override
	public List<Product> getNum(Product product) {

		return sqlSessionTemplate.selectList("SQL.ProductSQL.getNum", product);
	}

	@Override
	public Product getProduct(Integer productNumber) {

		return sqlSessionTemplate.selectOne("SQL.ProductSQL.getProduct", productNumber);
	}

	@Override
	public int insertProduct(Product product) {

		return sqlSessionTemplate.insert("SQL.ProductSQL.insertProduct", product);
	}

	@Override
	public int deleteProduct(Integer productNumber) {

		return sqlSessionTemplate.delete("SQL.ProductSQL.deleteProduct", productNumber);
	}

	@Override
	public int updateProduct(Product product) {

		return sqlSessionTemplate.update("SQL.ProductSQL.updateProduct", product);
	}
	/*해당 판매자가 올린 물품만 보기*/
	@Override
	public List<Product> getProductUserId(Product product) {

		return sqlSessionTemplate.selectList("SQL.ProductSQL.getProductUserId", product);
	}

	/* 마감임박순 */
	@Override
	public List<Product> getProductListEndDate(Product product) {

		return sqlSessionTemplate.selectList("SQL.ProductSQL.getProductListEndDate", product);
	}

	
	
	/* 카테고리 최고가격 */
	@Override
	public Product getProductCategoryFashion(Product product) {

		return sqlSessionTemplate.selectOne("SQL.ProductSQL.getProductCategoryFashion", product);
	}

	@Override
	public Product getProductCategoryDigital(Product product) {

		return sqlSessionTemplate.selectOne("SQL.ProductSQL.getProductCategoryDigital", product);
	}

	@Override
	public Product getProductCategoryRareCollection(Product product) {

		return sqlSessionTemplate.selectOne("SQL.ProductSQL.getProductCategoryRareCollection", product);
	}

	@Override
	public Product getProductCategoryHealthBeauty(Product product) {

		return sqlSessionTemplate.selectOne("SQL.ProductSQL.getProductCategoryHealthBeauty", product);
	}

	@Override
	public Product getProductCategoryMotorPartz(Product product) {

		return sqlSessionTemplate.selectOne("SQL.ProductSQL.getProductCategoryMotorPartz", product);
	}

	@Override
	public Product getProductCategoryToyHobby(Product product) {

		return sqlSessionTemplate.selectOne("SQL.ProductSQL.getProductCategoryToyHobby", product);
	}

	@Override
	public Product getProductCategorySports(Product product) {

		return sqlSessionTemplate.selectOne("SQL.ProductSQL.getProductCategorySports", product);
	}

	@Override
	public Product getProductCategoryLife(Product product) {

		return sqlSessionTemplate.selectOne("SQL.ProductSQL.getProductCategoryLife", product);
	}

	/* 카테고리별 페이지 */
	@Override
	public List<Product> getProductCategoryFashionList(Product product) {
		return sqlSessionTemplate.selectList("SQL.ProductSQL.getProductCategoryFashionList", product);
	}

	@Override
	public List<Product> getProductCategoryDigitalList(Product product) {
		return sqlSessionTemplate.selectList("SQL.ProductSQL.getProductCategoryDigitalList", product);
	}

	@Override
	public List<Product> getProductCategoryRareCollectionList(Product product) {
		return sqlSessionTemplate.selectList("SQL.ProductSQL.getProductCategoryRareCollectionList", product);
	}

	@Override
	public List<Product> getProductCategoryHealthBeautyList(Product product) {
		return sqlSessionTemplate.selectList("SQL.ProductSQL.getProductCategoryHealthBeautyList", product);
	}

	@Override
	public List<Product> getProductCategoryMotorPartzList(Product product) {
		return sqlSessionTemplate.selectList("SQL.ProductSQL.getProductCategoryMotorPartzList", product);
	}

	@Override
	public List<Product> getProductCategoryToyHobbyList(Product product) {
		return sqlSessionTemplate.selectList("SQL.ProductSQL.getProductCategoryToyHobbyList", product);
	}

	@Override
	public List<Product> getProductCategorySportsList(Product product) {
		return sqlSessionTemplate.selectList("SQL.ProductSQL.getProductCategorySportsList", product);
	}

	@Override
	public List<Product> getProductCategoryLifeList(Product product) {
		return sqlSessionTemplate.selectList("SQL.ProductSQL.getProductCategoryLifeList", product);
	}

	@Override
	public Product getProductImage(String productImage) {
		return sqlSessionTemplate.selectOne("SQL.ProductSQL.getproductImage", productImage);
	}

	@Override
	public List<Product> getSer(Product product) {
		
		return sqlSessionTemplate.selectList("SQL.ProductSQL.ser", product);
	}

}
