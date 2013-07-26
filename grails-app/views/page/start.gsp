<!DOCTYPE html>
<html>
	<head>
		<title>Start</title>
	</head>
	<body>
		<h1>Start</h1>
		
			<g:if test="${!grails.util.Environment.isDevelopmentMode()}">
				<a href="http://meli-ga.no-ip.biz/page/login">Login</a>
		  	</g:if>
		  	<g:else>
				<a href="http://test-meli-ga.no-ip.biz:8080/page/login">Login</a>
		  	</g:else>
		

		<script type="text/javascript">
		
			var _gaq = _gaq || [];

		  	<g:if test="${!grails.util.Environment.isDevelopmentMode()}">
				_gaq.push(['_setAccount', 'UA-42736032-1']);
		  	</g:if>
		  	<g:else>
		  		_gaq.push(['_setAccount', 'UA-11111111-1']);
		  	</g:else>

			  	_gaq.push(['_setDomainName', 'herokuapp.com']);
			  	_gaq.push(['_setAllowLinker', true]);
			  	_gaq.push(['_trackPageview']);
			  		
			  (function() {
			    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
			    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
			  })();
			  

		</script>
	</body>
</html>
