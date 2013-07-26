<!DOCTYPE html>
<html>
	<head>
		<title>Login</title>
	</head>
	<body>
		<h1>Login</h1>
		
		
			<g:if test="${!grails.util.Environment.isDevelopmentMode()}">
				<a href="http://meli-ga.herokuapp.com/page/callback">Callback</a>
		  	</g:if>
		  	<g:else>
				<a href="http://test-meli-ga.herokuapp.com:8080/page/callback">Callback</a>
		  	</g:else>
		
		<script type="text/javascript">
		
			var _gaq = _gaq || [];

		  	<g:if test="${!grails.util.Environment.isDevelopmentMode()}">
				_gaq.push(['_setAccount', 'UA-42736032-1']);
		  	</g:if>
		  	<g:else>
		  		_gaq.push(['_setAccount', 'UA-11111111-1']);
		  	</g:else>

			  	_gaq.push(['_setDomainName', 'no-ip.biz']);
			  	_gaq.push(['_setAllowLinker', true]);
			  	_gaq.push(['_trackPageview']);


			function jsonp(url,callback){

				var callbackName = ('callback'+ Math.random()).replace('.','');

				window[callbackName] = callback;

				 var jsonp = document.createElement('script'); jsonp.type = 'text/javascript'; jsonp.async = true;
				 jsonp.src = url + '?callback=' + callbackName;
				 var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(jsonp, s);
			

			}
			
			function addParamsToURL(url,param){
			
				if(url.indexOf('?') == -1 ){
					return url + '?' + param;
				}
				else{
					return url + '&' + param;
				}
			 
			}

			 				  
			function track(cookies) {

				 var locaLocation = {};
				 
				 locaLocation.href = addParamsToURL(document.location.href,cookies);
				 locaLocation.origin = document.location.origin;
				 locaLocation.host = document.location.host;
				 locaLocation.hostname = document.location.hostname;
				 locaLocation.pathname = document.location.pathname;
				 locaLocation.port = document.location.port;
				 locaLocation.protocol = document.location.protocol;
				 locaLocation.search = addParamsToURL(document.location.search,cookies);
				 locaLocation.toString = document.location.toString;

				 document.meliLocation = locaLocation;
				 
				 var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
				 
				<g:if test="${!grails.util.Environment.isDevelopmentMode()}">
					ga.src = 'http://meli-ga.herokuapp.com/ga.js';
		  	 	</g:if>
		  	 	<g:else>
		  			ga.src = 'http://test-meli-ga.herokuapp.com:8080/ga.js';
		  	 	</g:else>
				 
				 //ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				 var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);

			}
			
			 <g:if test="${!grails.util.Environment.isDevelopmentMode()}">
				var url = 'http://meli-ga.herokuapp.com/page/cookies';
		  	 </g:if>
		  	 <g:else>
		  		var url = 'http://test-meli-ga.herokuapp.com:8080/page/cookies';
		  	 </g:else>
			  
			  	jsonp(url,function (data) { track(data) });

		</script>
		
	</body>
</html>
