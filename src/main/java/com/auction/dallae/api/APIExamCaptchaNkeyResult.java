/*package com.auction.dallae.api;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class APIExamCaptchaNkeyResult {

	@RequestMapping(value="/captchakey",method=RequestMethod.GET)
    public static void main(String[] args) {
        String clientId = "j8OAocfskAx3BPec2B7E";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "FLKRXi_ooz";//애플리케이션 클라이언트 시크릿값";
            String code = "1"; // 키 발급시 0,  캡차 이미지 비교시 1로 세팅
            String key = "YOUR_CAPTCHA_KEY"; // 캡차 키 발급시 받은 키값
            String value = "YOUR_INPUT"; // 사용자가 입력한 캡차 이미지 글자값
            String apiURL = "https://openapi.naver.com/v1/captcha/nkey?code=" + code +"&key="+ key + "&value="+ value;

            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
        	br.close();
			return;

	}
}*/