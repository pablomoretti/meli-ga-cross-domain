package meli.ga

class GaController {

	def index() {
		
		String script = new URL("http://www.google-analytics.com/ga.js").text
		
		script = script.replace("location", "meliLocation");

		response.addHeader("Cache-Control", "max-age=43200, public")
			
		render(text:script,contentType:"text/javascript");
		
	}
	
	
}
