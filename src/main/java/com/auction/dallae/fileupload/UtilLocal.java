package com.auction.dallae.fileupload;

	import java.io.File;
	import java.io.IOException;
	import java.util.HashMap;
	import java.util.Iterator;
	import java.util.Map;

	import org.springframework.web.multipart.MultipartFile;
	import org.springframework.web.multipart.MultipartHttpServletRequest;

	public class UtilLocal {

		public static final String uploadPath = "C:\\Users\\hyunGoo\\git\\dallae\\src\\main\\webapp\\resources\\img\\product";

		public static Map<String, Object> saveFile(MultipartHttpServletRequest request){
			Map<String, Object> map = new HashMap<String, Object>();
			
			Map<String, Object> data = request.getParameterMap();
			Iterator<String> it = data.keySet().iterator();
			
			while(it.hasNext()) {
				String key = it.next();
				map.put(key, data.get(key));
			}
			
			Map<String, MultipartFile> files = request.getFileMap();
			it = request.getFileMap().keySet().iterator();
			String dataName = "";
			String key = "";
			int cnt = 1;
			while (it.hasNext()) {
				key = it.next();
				System.out.println(key);
				String fileName = files.get(key).getOriginalFilename();

				if (!fileName.equals("")) {
					String extensionName = fileName.substring(fileName.lastIndexOf("."));// 확장자명 뽑아옴
					String lastFileName = System.currentTimeMillis() +"num"+ cnt + extensionName;// 이름=업로드시간+확장자명
					File uploadFile = new File(uploadPath, lastFileName);
					try {
						files.get(key).transferTo(uploadFile);
						dataName += lastFileName + "|";
						cnt++;
					} catch (IllegalStateException | IOException e) {
						e.printStackTrace();
					}

				}

			}
			dataName = dataName.substring(0, dataName.length() - 1);
			map.put("productImage", dataName);

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
