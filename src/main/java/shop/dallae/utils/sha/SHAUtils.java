package shop.dallae.utils.sha;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.springframework.stereotype.Repository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class SHAUtils {
	private static final String SALT = "321312321";

	public static String makeEcnStr(String passwd) throws UnsupportedEncodingException {
		String out = null;
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			md.reset();
			md.update(SALT.getBytes());
			byte[] arr = md.digest(passwd.getBytes("UTF-8"));
			StringBuilder builder = new StringBuilder();
			for (byte b : arr) {
				builder.append(Integer.toString(b & 0xff + 0x100, 16).substring(1));
			}
			out = builder.toString();
		} catch (NoSuchAlgorithmException e) {
			log.error("error=>{}", e);
		} catch (UnsupportedEncodingException e) {
			throw e;
		}
		return out;
	}

	public static boolean matchEncStr(final String str, String encStr) {
		String password = null;
		try {
			password = makeEcnStr(str);
		} catch (UnsupportedEncodingException e) {
			log.error("error=>{}", e);
		}
		if (password == null || encStr == null) {
			return false;
		}
		return password.equals(encStr);
	}

	public static void main(String[] args) {
		String passwd;
		try {
			passwd = SHAUtils.makeEcnStr("123");
			log.info(passwd);
		} catch (UnsupportedEncodingException e) {
			log.error("error=>{}", e);
		}
	}
}
