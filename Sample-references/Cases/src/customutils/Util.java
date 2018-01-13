package customutils;

import javax.servlet.http.HttpSession;

public class Util {
	public static String getValue(HttpSession session, String key) {
		String value = "";
		if (session.getAttribute(key) != null) {
			value = session.getAttribute(key).toString();
			session.removeAttribute(key);
		}
		return value;
	}
}