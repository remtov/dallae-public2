package com.auction.dallae.utils.fileupload;

import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import org.apache.commons.beanutils.BeanUtils;

public class PM {
	@SuppressWarnings("unchecked")
	public static <T> T MapToVo(Map<String, Object> map, Class<?> clazz) {
		T clas = null;
		try {
			clas = (T) clazz.newInstance();
			BeanUtils.populate(clas, map);
		} catch (InstantiationException e) {

			e.printStackTrace();
		} catch (IllegalAccessException e) {

			e.printStackTrace();
		} catch (InvocationTargetException e) {

			e.printStackTrace();
		}
		return clas;

	}
}
