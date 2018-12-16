package shop.dallae.utils.fileupload;

import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import org.apache.commons.beanutils.BeanUtils;

public class PM {
	@SuppressWarnings("unchecked")//컴파일 단위의 서브세트와 관련된 컴파일 경고를 사용하지 않도록 설정할 수 있습니다.
	public static <T> T MapToVo(Map<String, Object> map, Class<?> clazz) {
		T clas = null;
			try {
				clas = (T) clazz.newInstance();
				BeanUtils.populate(clas, map);
			} catch (InstantiationException | IllegalAccessException | InvocationTargetException e) {
				e.printStackTrace();
			}
			
		return clas;

	}
}
