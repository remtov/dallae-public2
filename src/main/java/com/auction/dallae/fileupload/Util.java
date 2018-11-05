package com.auction.dallae.fileupload;



import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;


import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public class Util {

	public static String rootPath  ;
	public static String uploadPath;

	public static Map<String, Object> saveFile(MultipartHttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();

		Map<String, Object> data = request.getParameterMap();
		Iterator<String> it = data.keySet().iterator();
		uploadPath= request.getSession().getServletContext().getRealPath("/") +"/resources/img/product";
	//	이렇게 해서 쓰셔야 할거같은데 원래는 밖에서 하는 방법도 있을텐데 굳이 그렇게 할 필요 없으니까
		//이렇게 쓰셔도 될거같아요 다른 메소드에서도 쓰려고 위에 static으로 빼놓으신거같은데 이렇게
		//쓰면 다른 메소드에서도 쓸 수 있어요 넵 
		while (it.hasNext()) {
			String key = it.next();
			map.put(key, data.get(key));
		}

		Map<String, MultipartFile> files = request.getFileMap();
		it = request.getFileMap().keySet().iterator();
		while (it.hasNext()) {
			String key = it.next();
			String fileName = files.get(key).getOriginalFilename();

			if (!fileName.equals("")) {
				String extensionName = fileName.substring(fileName.lastIndexOf("."));// 확장자명 뽑아옴
				String lastFileName = System.currentTimeMillis() + extensionName;// 이름=업로드시간+확장자명
				File uploadFile = new File(uploadPath, lastFileName);

				try {
					files.get(key).transferTo(uploadFile);
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
				map.put(key, lastFileName);
			}
		}

		System.out.println(map);
		return map;
	}

	public static void deleteFile(String filePath) {
		File file = new File(filePath);
		if (file.exists()) {
			file.delete();
		}

	}
}
