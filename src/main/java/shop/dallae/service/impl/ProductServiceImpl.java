package shop.dallae.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dallae.dao.impl.ProductDAOImpl;
import shop.dallae.service.ProductService;
import shop.dallae.utils.fileupload.Util;
import shop.dallae.vo.Product;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAOImpl productDAOImpl;

	@Override
	public List<Product> getProductList(Product product) {
		return productDAOImpl.getProductList(product);
	}

	@Override
	public List<Product> getNum(Product product) {
		return productDAOImpl.getNum(product);
	}

	@Override
	public Product getProduct(Integer productNumber) {
		return productDAOImpl.getProduct(productNumber);
	}

	@Override
	public int insertProduct(Product product) {
		System.out.println(product);
		int success = productDAOImpl.insertProduct(product);
		if (success != 1) {
			String filePath = Util.uploadPath + product.getProductImage();
			Util.deleteFile(filePath);
		}
		return success;
	}

	@Override
	public int deleteProduct(Integer productNumber) {
		String file = productDAOImpl.getProduct(productNumber).getProductImage();
		int success = productDAOImpl.deleteProduct(productNumber);
		if (success == 1) {
			String filePath = Util.uploadPath + file;
			Util.deleteFile(filePath);
		}
		return success;
	}

	@Override
	public int updateProduct(Product Product) {
		String file = productDAOImpl.getProduct(Product.getProductNumber()).getProductImage();
		int success = productDAOImpl.updateProduct(Product);
		if (Product.getProductImage() != null) {
			if (success == 1) {
				String filePath = Util.uploadPath + file;
				Util.deleteFile(filePath);
			}
		}
		return success;
	}

	@Override
	public List<Product> getProductUserId(Product product) {
		return productDAOImpl.getProductUserId(product);
	}

	@Override
	public List<Product> getProductListEndDate(Product product) {
		return productDAOImpl.getProductListEndDate(product);
	}

	/*홈화면 카테고리별 최고가격*/
	@Override
	public Product getProductCategoryFashion(Product product) {
		return productDAOImpl.getProductCategoryFashion(product);
	}

	@Override
	public Product getProductCategoryDigital(Product product) {
		return productDAOImpl.getProductCategoryDigital(product);
	}

	@Override
	public Product getProductCategoryRareCollection(Product product) {
		return productDAOImpl.getProductCategoryRareCollection(product);
	}

	@Override
	public Product getProductCategoryHealthBeauty(Product product) {
		return productDAOImpl.getProductCategoryHealthBeauty(product);
	}

	@Override
	public Product getProductCategoryMotorPartz(Product product) {
		return productDAOImpl.getProductCategoryMotorPartz(product);
	}

	@Override
	public Product getProductCategoryToyHobby(Product product) {
		return productDAOImpl.getProductCategoryToyHobby(product);
	}

	@Override
	public Product getProductCategorySports(Product product) {
		return productDAOImpl.getProductCategorySports(product);
	}

	@Override
	public Product getProductCategoryLife(Product product) {
		return productDAOImpl.getProductCategoryLife(product);
	}

	/* 카테고리별 리스트 */
	@Override
	public List<Product> getProductCategoryFashionList(Product product) {
		return productDAOImpl.getProductCategoryFashionList(product);
	}
	@Override
	public List<Product> getProductCategoryDigitalList(Product product) {
		return productDAOImpl.getProductCategoryDigitalList(product);
	}
	@Override
	public List<Product> getProductCategoryRareCollectionList(Product product) {
		return productDAOImpl.getProductCategoryRareCollectionList(product);
	}
	@Override
	public List<Product> getProductCategoryHealthBeautyList(Product product) {
		return productDAOImpl.getProductCategoryHealthBeautyList(product);
	}
	@Override
	public List<Product> getProductCategoryMotorPartzList(Product product) {
		return productDAOImpl.getProductCategoryMotorPartzList(product);
	}
	@Override
	public List<Product> getProductCategoryToyHobbyList(Product product) {
		return productDAOImpl.getProductCategoryToyHobbyList(product);
	}
	@Override
	public List<Product> getProductCategorySportsList(Product product) {
		return productDAOImpl.getProductCategorySportsList(product);
	}
	@Override
	public List<Product> getProductCategoryLifeList(Product product) {
		return productDAOImpl.getProductCategoryLifeList(product);
	}
}
