package meli.ga

import java.util.regex.Matcher
import java.util.regex.Pattern

class PageController {

	def start() {
	}

	def login() {
	}

	def callback() {
	}

	def cookies() {

		StringBuilder sb = new StringBuilder();
		
		Map cookies = getCookies(request);
		
		print cookies;

		sb.append("__utma=")
		sb.append(cookies['__utma']?:'-')
		sb.append("&__utmb=")
		sb.append(cookies['__utmb']?:'-')
		sb.append("&__utmc=")
		sb.append(cookies['__utmc']?:'-')
		sb.append("&__utmx=")
		sb.append(cookies['__utmx']?:'-')
		sb.append("&__utmz=")
		sb.append(cookies['__utmz']?:'-')
		sb.append("&__utmv=")
		sb.append(cookies['__utmv']?:'-')
		sb.append("&__utmk=")
		sb.append(cookies['__utmk']?:'-')

		render(text:"${params.callback}('${sb.toString()}');",contentType:"text/javascript");
	}

	static Pattern p = Pattern.compile('\\s?(.*?)=(.*?)(;|$)');

	private static Map getCookies(request){

		def cookie = request.getHeader('Cookie');

		Matcher m = p.matcher(cookie);

		def map = [:];

		while(m.find()){
			map.put(m.group(1).toString(),m.group(2));
		}

		return map;
	}
}
